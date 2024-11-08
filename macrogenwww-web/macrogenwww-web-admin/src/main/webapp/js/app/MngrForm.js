var MngrForm = (function($) {

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
				userSn : options.userSn,
				resultVo : {},
				roleList : [],
				submitFlag : false,
			},
			created : function() {
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({
						dataType : "json",
						type : "POST",
						url : "/mngr/form/data",
						data : {
							userSn : vm.userSn
						}
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.roleList = data.roleList;
					});
				},
				onSubmit : function(e) {
					var vm = this;
					if (vm.submitFlag) {
						alert("처리중입니다....");
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

					if ($("#loginPassword").val()) {
						vm.resultVo.loginPassword = $("#loginPassword").val();
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mngr/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;
						goList();
					});
				},
				onDelete : function(e) {
					var vm = this;

					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mngr/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				onchangeLoginId : function() {
					var vm = this;

					var loginId = vm.resultVo.loginId;
					if (!checkLoginIdFormat(loginId)) {
						alert("아이디는 영문 또는 숫자를 조합하여 5~20자로 입력해주세요.");
						vm.resultVo.loginId = '';
						return false;
					}

					$.ajax({
						dataType : "json",
						type : "POST",
						url : "/mngr/exist",
						data : {loginId : loginId}
					}).done(function(data) {
						if(data.result == "not_exist") {
							console.log('not_exist loginId');
						} else if(data.result == "exist") {
							alert('사용 불가능한 아이디입니다 : ' + loginId);
							vm.resultVo.loginId = '';
						}
					});
				},
				onInitErrCnt : function() {
					var vm = this;
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mngr/initPasswordInputErrorCo',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.fetchData();
						alert("처리 되었습니다.");
					});
				},
				onInitPasswordInitlYn : function() {
					var vm = this;

					if (!confirm('해당계정에 대해, 비밀번호를 초기 상태로 변경하시겠습니까?')) {
						return false;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/mngr/initPasswordInitlYn',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.fetchData();
						alert("처리 되었습니다.");
					});
				},
				onList : function(e) {
					goList();
				},
			}
		})
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/mngr/list');
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