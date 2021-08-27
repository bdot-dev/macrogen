var WnpzForm = (function($) {
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
				wnpzSn : options.wnpzSn,
				resultVo : {},
				submitFlag : false,
				wnpzClCodeList: [],
				wnpzTmeCodeList: [],
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
						url : '/' + options.lang + '/wnpz/form/data',
						data : JSON.stringify({ wnpzSn : vm.wnpzSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.wnpzClCodeList = data.wnpzClCodeList;
						vm.wnpzTmeCodeList = data.wnpzTmeCodeList;
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
						url : '/' + options.lang + '/wnpz/submit',
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
						url : '/' + options.lang + '/wnpz/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.wnpzClCode) {
						alert('필수입력 - 수상분류');
						vm.$refs.wnpzClCode.focus();
						return false;
					}
					if (!vm.resultVo.wnpzTmeCode) {
						alert('필수입력 - 수상회차');
						vm.$refs.wnpzTmeCode.focus();
						return false;
					}
					if (!vm.resultVo.photoAtchId) {
						alert('필수입력 - 사진');
						return false;
					}
					if (!vm.resultVo.wnpzNm) {
						alert('필수입력 - 수상자명');
						vm.$refs.wnpzNm.focus();
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
				onchangePhotoFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.photoAtchId = data.resultVo.atchId;
						vm.resultVo.photoFlpth = data.resultVo.physiclFlpth;

					});
				},
				onDeletePhoto : function() {
					var vm = this;
					vm.resultVo.photoAtchId = null;
					vm.resultVo.photoFlpth = null;
				},

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
		$listForm.attr('action', '/' + options.lang + '/wnpz/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
