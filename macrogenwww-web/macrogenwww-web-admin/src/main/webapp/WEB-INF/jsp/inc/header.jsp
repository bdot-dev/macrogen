<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<sec:authentication property="principal" var="loginMngrVo" />

<div id="popup_wrap">
	<div id="divpop">
		<div class="topline"></div>
		<h1>2차 인증 팝업</h1>
		<form:form commandName="resultVo" id="loginForm" name="loginForm" method="post">
			<div class="login_Area">
				<p>※ 계정 정보 변경 권한 확인을 위한 인증이 필요합니다.</p>
				<div class="login_frm">
					<ul>
						<li><label for="userId">Admin ID</label>
						<input id="userId" name="userId" type="text" maxlength="20" placeholder="User Id" class="w100p" />
						</li>
						<li><label for="userPwd">Password</label><input id="userPwd" name="userPwd" type="password" maxlength="20" placeholder="User Password" class="w100p" />
						</li>
						<li>
							<button type="button" name="button" class="btn_login03">확인</button>
						</li>
					</ul>
				</div>
			</div>
		</form:form>
		
		<button type="button" class="close_btn">X</button>
	</div>
	<div id="popup_bg"></div>
</div>
<div class="util">
	<ul>
		<li><strong><sec:authorize access="isAuthenticated()">${loginMngrVo.userNm }</sec:authorize></strong><span>님</span></li>
		<li><button type="button" class="btn_login btnLogout">로그아웃</button></li>
		<li><button type="button" class="btn_login btnMyinfo">개인정보 변경</button></li>
	</ul>
</div>
<div class="gnb_wrap">
	<h1><a href="/">Macrogen</a></h1>
	<ul class="gnb">
		<c:forEach var="result" items="${topmenuList }" varStatus="status">
			<c:choose>
				<c:when test="${fn:startsWith(result.menuUrl, 'http') }">
					<li><a style="font-size: 17px;" href="${result.menuUrl }" target="blank">${result.menuNm }</a></li>
				</c:when>
				<c:otherwise>
					<li ${result.menuSn eq selected_menu_vo.topMenuSn ? 'class="active"' : ''}><a style="font-size: 17px;"
						href="/mngrmenu/forward/${result.menuSn}">${result.menuNm }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
</div>
<script>
	$(function() {
		$('.btnLogout', '.util').on('click', function() {
			location.href = '/logout?${_csrf.parameterName}=${_csrf.token}';
		});
		
		$('.btnMyinfo', '.util').on('click', function() {
			document.getElementById('popup_wrap').style.visibility = "visible";
			$('html, body').css({overflow: 'hidden'});
		});
		
		$('.close_btn').on('click', function() {
			document.getElementById('popup_wrap').style.visibility = "hidden";
			$('html, body').css({overflow: 'inherit'});
		});
		
		var $form = $('#loginForm');
		
		var validateOptions = {
				rules: {
					userId: { required: true },
					userPwd: {
						required:  true},
				},
				messages: {
					userId: { required: '필수입력입니다(아이디)' },
					userPwd: { required: '필수입력입니다(패스워드)' },
				}
		};
		var logout	=	function(){
			location.href = '/logout?${_csrf.parameterName}=${_csrf.token}';
		}
		
		var actionAuth = function() {
			// validate
			validator = $form.validate(validateOptions);
			if (!$form.valid()) {
				return false;
			}

			$form.ajaxSubmit({
				type: 'post', dataType: 'json',
				url: '/auth/submit',
				success: function(data) {
					if(data.result == "success"){
						alert("인증되었습니다");
						location.href = '/myinfo/form';
					}else if(data.result == "fail"){
						alert("관리자 아이디 또는 비밀번호가 틀렸습니다.\n다시 확인하고 시도해주세요. \n\n※5회 이상 로그인 실패 시 잠금처리됩니다.");
						document.getElementById('popup_wrap').style.visibility = "hidden";
						$('html, body').css({overflow: 'inherit'});
						location.href = '/main';
					}else if(data.result == "locked"){
						alert("관리자 로그인 시도 5회 이상 실패하여\n해당 계정이 잠금처리 되었습니다. \n\n슈퍼관리자에게 문의하세요.");
						logout();
						document.getElementById('popup_wrap').style.visibility = "hidden";
						$('html, body').css({overflow: 'inherit'});
					}
					
							
				}
			});
		};
		
		var onEnter = function(e) {
			if (e.keyCode == 13) {
				actionAuth();
				e.preventDefault();
			}
		};
		
		$('.btn_login03').on('click', actionAuth);
		$('#userId, #userPwd').on('keypress', onEnter);
		
	});
</script>
