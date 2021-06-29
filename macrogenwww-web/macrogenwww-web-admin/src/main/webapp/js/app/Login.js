var Login = (function($) {

	var options;
	var init = function(_options) {
		console.log('Login:', _options);
		var options = _options;
		
		// bind event
		$('.btnLogin').on('click', actionLogin);
		$('#j_username, #j_password').on('keypress', onEnter);

		// set focus
		if (!$.trim($('#j_username').val())) {
			$('#j_username').val('').focus();
		} else if (!$.trim($('#j_password').val())) {
			$('#j_password').val('').focus();
		}

		// alert error
		/*if (options.err == '1') {
			alert('아이디가 없거나, 비밀번호가 일치하지 않습니다.');
		} else if (options.err == '2') {
			alert('비밀번호 입력 오류 회수가 초과되어 잠긴 상태입니다.');
		}*/
	};

	var actionLogin = function() {
		if ($.trim($('#j_username').val()) == '') {
			alert('아이디를 입력해 주세요.');
			$('#j_username').val('').focus();
			return false;
		} else if ($.trim($('#j_password').val()) == '') {
			alert('비밀번호를 입력해 주세요.');
			$('#j_password').val('').focus();
			return false;
		} else {
			$('#loginForm').submit();
			return true;
		}
	};

	var onEnter = function(e) {
		if (e.keyCode == 13) {
			actionLogin();
			e.preventDefault();
		}
	};

	return {
		init : init
	};
	
}(jQuery));
