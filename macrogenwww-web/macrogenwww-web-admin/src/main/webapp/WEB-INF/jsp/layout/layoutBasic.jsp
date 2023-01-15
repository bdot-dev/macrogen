<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />Macrogen CMS</title>
	<script>
		var siteConfigs = {
			environment			:	"${globalsSiteEnvironment}",
			bUserOverlap		:	${bUserOverlap}
		};
		window.siteConfigs = siteConfigs;
	</script>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body>
	<header>
		<c:import url="/inc/header" />
	</header>

	<div id="container">
		<div class="contents_wrap" ${LEFTMENU_YN eq 'N' ? 'style="padding-left:0;"' : '' }>
			<!-- 좌측 메뉴// -->
			<c:if test="${LEFTMENU_YN ne 'N' }">
			<c:import url="/inc/left" />
			</c:if>
			<!-- //좌측 메뉴 -->

			<!-- 컨텐츠 영역// -->
			<div class="contents">

				<!-- //페이지 타이틀 -->
				<c:if test="${LEFTMENU_YN ne 'N' }">
				<div class="title_wrap">
					<div class="title_h2_wrap">
						<h2>${selected_menu_vo.menuNm }</h2>
					</div>
					<ul class="breadcrumb">
						<li>Home</li>
						<c:if test="${not empty selected_menu_vo.menuNmPath }">
							<li><span>&gt;</span>${fn:replace(selected_menu_vo.menuNmPath, '>'
									, '</li><li><span>&gt;</span>') }</li>
						</c:if>
					</ul>
				</div>
				</c:if>
				<!-- //페이지 타이틀 -->

				<!-- 내용// -->
				<decorator:body />
				<!-- //내용 -->

			</div>
			<!-- //컨텐츠 영역 -->
		</div>
	</div>
	<footer>
		<c:import url="/inc/footer" />
	</footer>

	<!-- <form id="uploadForm" name="uploadForm" enctype="multipart/form-data" action="/upload/file">
		<input type="file" name="atchFile" />
	</form> -->
	<script src="/js/app/mngrAuth.js"></script>
	<%-- <c:if test="${bUserOverlap eq false }">
    <script>
    	alert('동일계정으로 로그인되었습니다. 로그아웃 처리 됩니다.');
    	location.href = '/logout';
    </script>
    </c:if>	 --%>

    <script>
      $(function() {
          try {
            showLength();
          } catch (ignore) { }
      });
    </script>
</body>
</html>
