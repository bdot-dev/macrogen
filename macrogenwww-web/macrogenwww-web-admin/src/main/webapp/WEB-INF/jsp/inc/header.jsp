<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<sec:authentication property="principal" var="loginMngrVo" />

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
			location.href = '/myinfo/form';
		});
	});
</script>
