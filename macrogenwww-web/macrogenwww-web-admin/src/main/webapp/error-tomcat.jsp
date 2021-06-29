<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no"/>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/layout.css">
<link rel="stylesheet" href="/css/content.css">

<title>톰캣 에러페이지_오류</title>

</head>
<body>
<div id="wrap">
	<div class="err_box">
		<div class="err_img"></div>
		<div class="err_txt">
			<h1 class="logo"><a href="#"></a></h1>
			<h2>[Tomcat] 페이지를 찾을 수 없습니다.</h2>
			<p class="err_btm2">재방문하시려는 페이지의 주소가 잘못 입력되었거나,<br>
				페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br>
				입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.</p>
			<div class="btn_wrap">
				<button type="button" name="button" class="btn flat_red" onclick="history.back(-1);">이전페이지</button>
				<button type="button" name="button" class="btn line_red" onclick="location.href='/';">메인페이지</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>
