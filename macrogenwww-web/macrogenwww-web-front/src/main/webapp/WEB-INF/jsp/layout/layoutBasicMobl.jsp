<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />마크로젠</title>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body>
	<header>
		<c:import url="/inc/header" />
	</header>

	<!-- 내용// -->
	<decorator:body />
	<!-- //내용 -->

	<footer>
		<c:import url="/inc/footer" />
	</footer>

</body>
</html>
