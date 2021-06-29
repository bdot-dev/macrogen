<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />Eluo Front</title>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body>
	<header>
		<c:import url="/inc/header" />
	</header>

	<div id="container">
		<div class="contents_wrap">
			<!-- 컨텐츠 영역// -->
			<div class="contents">

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

    <script>
      $(function() {
          try {
            showLength();
          } catch (ignore) { }
      });
    </script>
</body>
</html>
