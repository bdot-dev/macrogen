<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="section_gnb">
    <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
    <nav>
        <ul>
            <li><a href="#" class="font-bold">macrogen</a></li>
            <li><a href="#" class="font-bold">business</a></li>
            <li><a href="#" class="font-bold">r&d</a></li>
            <li><a href="#" class="font-bold">newsroom</a></li>
            <li><a href="#" class="font-bold">ir</a></li>
            <li><a href="#" class="font-bold">esg</a></li>
        </ul>
    </nav>
</div>
<c:choose>
	<c:when test="${layout_type eq 'company' or
					layout_type eq 'business' }">
		<c:set var="snsIconColor" value="-white" />
	</c:when>
</c:choose>
<div class="section_btn">
    <ul class="sns">
        <li><a href="#"><i class="icon icon-facebook-circle${snsIconColor }"></i></a></li>
        <li><a href="#"><i class="icon icon-youtube-circle${snsIconColor }"></i></a></li>
        <li><a href="#"><i class="icon icon-blog-circle${snsIconColor }"></i></a></li>
        <li><a href="#"><i class="icon icon-linkedin-circle${snsIconColor }"></i></a></li>
    </ul>
    <div class="btn_eng">
        <a href="#" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
    </div>
</div>
