var PatentForm = (function($) {
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
				patentSn : options.patentSn,
				resultVo : {},
				submitFlag : false,
				ctgryCodeList: [],
				nationCodeList: [],
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
						url : '/' + options.lang + '/patent/form/data',
						data : JSON.stringify({ patentSn : vm.patentSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.ctgryCodeList = data.ctgryCodeList;
						vm.nationCodeList = data.nationCodeList;
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

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/patent/submit',
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
						url : '/' + options.lang + '/patent/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.patentCn) {
						alert('필수입력 - 특허내용');
						vm.$refs.patentCn.focus();
						return false;
					}
					if (!vm.resultVo.ctgryCode) {
						alert('필수입력 - 카테고리');
						vm.$refs.ctgryCode.focus();
						return false;
					}
					if (!vm.resultVo.nationCode) {
						alert('필수입력 - 등록국가');
						vm.$refs.nationCode.focus();
						return false;
					}
					return true;
				},

				onList : function() {
					goList();
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
		$listForm.attr('action', '/' + options.lang + '/patent/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
