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
					if (!vm.resultVo.empaSj) {
						alert('필수입력 - 제목');
						vm.$refs.empaSj.focus();
						return false;
					}
					if (!vm.resultVo.rceptBeginDe || !vm.resultVo.rceptEndDe) {
						alert('필수입력 - 접수기간');
						return false;
					}
					if (!vm.resultVo.rceptSttusCode) {
						alert('필수입력 - 접수상태');
						return false;
					}
					if (!vm.resultVo.sportSeCode) {
						alert('필수입력 - 지원구분');
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
					location.href = '/download/file/' + vm.resultVo.atchId;
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
