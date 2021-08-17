var PolicyForm = (function($) {
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
				policySn : options.policySn,
				resultVo : {},
				submitFlag : false,
				expsrYnList: [],
				policyList: [],
				searchPolicySn : options.policySn,
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
						url : '/' + options.lang + '/policy-' + options.policy + '/form/data',
						data : JSON.stringify({ policySn : vm.policySn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.expsrYnList = data.expsrYnList;
						vm.policyList = data.policyList;
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
						url : '/' + options.lang + '/policy-' + options.policy + '/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;

						alert('저장되었습니다.');
						if (vm.resultVo.policySn) {
							// 수정일 경우, 화면갱신
							vm.fetchData();
						} else {
							// 등록일 경우, 최근으로 화면이동
							location.href = '/' + options.lang + '/policy-' +
								options.policy + '/latest';
						}
					});
				},
				onDelete : function() {
					var vm = this;

					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/policy-' + options.policy + '/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						location.href = '/' + options.lang + '/policy-' +
							options.policy + '/latest';
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.expsrYn) {
						alert('필수입력 - 노출여부');
						return false;
					}
					if (!vm.resultVo.applcDe) {
						alert('필수입력 - 적용일자');
						return false;
					}
					return true;
				},
				onAdd: function() {
					var vm = this;
					location.href = '/' + options.lang + '/policy-' +
							options.policy + '/form';
				},
				onSearch: function() {
					var vm = this;
					console.log(vm.searchPolicySn);
					location.href = '/' + options.lang + '/policy-' +
							options.policy + '/form/' + vm.searchPolicySn;
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

	return {
		init : init,
	};

}(jQuery));
