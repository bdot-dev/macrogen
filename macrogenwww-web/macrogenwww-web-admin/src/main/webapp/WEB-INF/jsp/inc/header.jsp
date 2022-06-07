<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<sec:authentication property="principal" var="loginMngrVo" />

<div id="popup_wrap">
	<div id="divpop">
		<div class="topline"></div>
		<h1>2차 인증 팝업</h1>
		<form id="loginForm" name="loginForm" method="post" action="/j_spring_security_check">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" value="${returnUrl }" name="returnUrl" />
			<div class="login_Area">
				<p>※ 계정 정보 변경 권한 확인을 위한 인증이 필요합니다.</p>
				<div class="login_frm">
					<ul>
						<li><label for="">Admin ID</label> <input type="text"
							id="j_username" name="j_username" value="${savedMngrId }"
							maxlength="20" placeholder="User Id" /></li>
						<li><label for="">Password</label> <input type="password"
							id="j_password" name="j_password" maxlength="20"
							placeholder="Password" /></li>
						<li>
							<button type="button" name="button" class="btn_login03">확인</button>
						</li>
					</ul>
				</div>
			</div>
		</form>
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
			$('html, body').css({overflow: 'auto'});
		});
		
		$('.btn_login03').on('click', function() {
			location.href = '/myinfo/form';
		});
	});
</script>
