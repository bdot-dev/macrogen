var EmpaForm = (function($) {
	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $("#editForm");
		initVue();
	};

	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data : {
				empaSn : options.empaSn,
				resultVo : {},
				submitFlag : false,
				rceptSttusCodeList: [],
				sportSeCodeList: [],
			},
			created : function() {
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/empa/form/data',
						data : JSON.stringify({ empaSn : vm.empaSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.rceptSttusCodeList = data.rceptSttusCodeList;
						vm.sportSeCodeList = data.sportSeCodeList;
					});
				},
				onSubmit : function() {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					// validate
					if (!vm.validate()) {
						return false;
					}

					if (CKEDITOR) {
						for (var key in CKEDITOR.instances) {
							if (CKEDITOR.instances.hasOwnProperty(key)) {
								vm.resultVo[key] = CKEDITOR.instances[key].getData();
							}
						}
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/empa/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;
						goList();
					});
				},
				onDelete : function() {
					var vm = this;

					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/empa/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.empaClCode) {
						alert('필수입력 - 수상분류');
						vm.$refs.empaClCode.focus();
						return false;
					}
					if (!vm.resultVo.empaTmeCode) {
						alert('필수입력 - 수상회차');
						vm.$refs.empaTmeCode.focus();
						return false;
					}
					if (!vm.resultVo.photoAtchId) {
						alert('필수입력 - 사진');
						return false;
					}
					if (!vm.resultVo.empaNm) {
						alert('필수입력 - 수상자명');
						vm.$refs.empaNm.focus();
						return false;
					}
					if (!vm.resultVo.rm) {
						alert('필수입력 - 간단설명');
						vm.$refs.rm.focus();
						return false;
					}
					return true;
				},
				onList : function() {
					goList();
				},

				onchangeAtchFile : function (e){
					var vm = this;
					uploadFile($form, $(e.target), function(data) {
						vm.resultVo.atchId = data.resultVo.atchId;
						vm.resultVo.logicNm = data.resultVo.logicNm;
					});
				},
				onDeleteAtch : function() {
					var vm = this;
					vm.resultVo.atchId = null;
					vm.resultVo.logicNm = null;
				},
				onDownloadAtch: function(){
					var vm = this;
					console.log(vm.resultVo.atchId, vm.resultVo.logicNm);
				}

			},
			updated : function() {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			},

		});
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/' + options.lang + '/empa/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
