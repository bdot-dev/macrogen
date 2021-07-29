                 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div id="wrap" class="loginWrap">
		<form id="loginForm" name="loginForm" method="post" action="/j_spring_security_check">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" value="${returnUrl }" name="returnUrl" />
			<div class="login_Area">
				<h1>Macrogen Admin Login</h1>
				<div class="login_frm">
					<ul>
						<li><label for="">CMS ID</label> <input type="text"
							id="j_username" name="j_username" value="${savedMngrId }"
							maxlength="20" placeholder="User Id" /></li>
						<li><label for="">Password</label> <input type="password"
							id="j_password" name="j_password" maxlength="20"
							placeholder="Password" /></li>
						<li>
							<button type="button" name="button" class="btn_login02 btnLogin">Login</button>
						</li>
					</ul>
				</div>
				<div class="save_id">
					<input type="checkbox" id="saveId" name="saveId" value="Y"
						${not empty savedMngrId ? 'checked="checked"' : ''}> <label
						for="saveId">아이디 저장</label>
				</div>
				<div class="admin_copy">
					<address>copyright &copy; Since 2018 By. Macrogen. All rights reserved.</address>
				</div>
			</div>
		</form>
	</div>

	<script src="/js/app/Login.js"></script>
	<script>
		$(function() {
			var options = {
				err : '${param.err}'
			};
			Login.init(options);
		});

		$(window).load(function(){
			var options = {
				err : '${param.err}'
			};

			if (options.err == '1') {
				alert('아이디가 없거나, 비밀번호가 일치하지 않습니다.');
			} else if (options.err == '2') {
				alert('관리자 사이트 로그인이 5회 이상 실패하여\n해당 계정이 잠금 처리되었습니다.\n\n관리자에게 문의하세요.');
			}

		});
	</script>
</body>
