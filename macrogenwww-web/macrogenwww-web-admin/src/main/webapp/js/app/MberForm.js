var MberForm = (function($) {
	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $('#editForm');
		initVue();
	};

	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data : {
				userSn : options.userSn,
				resultVo : {},
				submitFlag : false,
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
						url : '/mber/form/data',
						data : JSON.stringify({ userSn : vm.userSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;

						// 일자 포맷팅 - 생일
						if (vm.resultVo && vm.resultVo.brthdy) {
							vm.resultVo.brthdy = formatDate(vm.resultVo.brthdy);
						}
					});
				},
				onSubmit : function(e) {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					// validate
					if (vm.resultVo.userSn) {
						options.validateOptions.rules.loginPassword.required = false;
					}
					$form.validate(options.validateOptions);
					if (!$form.valid()) {
						return false;
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					if ($('#loginPassword').val()) {
						vm.resultVo.loginPassword = $('#loginPassword').val();
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mber/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;
						goList();
					});
				},
				onchangeLoginId : function() {
					var vm = this;

					var loginId = vm.resultVo.loginId;
					if (!checkLoginIdFormat(loginId)) {
						alert('아이디는 영문 또는 숫자를 조합하여 5~20자로 입력해주세요.');
						vm.resultVo.loginId = '';
						return false;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mber/exist',
						data : JSON.stringify({loginId : loginId})
					}).done(function(data) {
						if(data.result == 'not_exist') {
							console.log('not_exist loginId');
						} else if(data.result == 'exist') {
							alert('사용 불가능한 아이디입니다 : ' + loginId);
							vm.resultVo.loginId = '';
						}
					});
				},
				onInitErrCnt : function() {
					var vm = this;
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mber/initPasswordInputErrorCo',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						alert('처리 되었습니다.');
					});
				},
				onDelete : function(e) {
					var vm = this;

					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mber/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				onList : function(e) {
					goList();
				},
			}, // end of methods
			updated : function() {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			},
		}); // end of new vue();
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/mber/list');
		$listForm.submit();
	};

	// custom validate method
	$.validator.addMethod('loginIdFormat', function(value, element) {
		return this.optional(element) || checkLoginIdFormat(value);
	});
	$.validator.addMethod('passwordFormat', function(value, element) {
		return this.optional(element) || checkPasswordFormat(value);
	});

	return {
		init : init
	};
}(jQuery));
