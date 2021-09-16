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
	<c:when test="${ layout_type eq 'company' or layout_type eq 'business' }">
		<c:set var="snsIconColor" value="-white" />
	</c:when>
</c:choose>
<div class="section_btn" data-layout-type="${layout_type }">
    <ul class="sns">
        <li><a href="https://www.facebook.com/macrogenkr/" target="_blank"><i class="icon icon-facebook-circle${snsIconColor }"></i></a></li>
        <li><a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank"><i class="icon icon-youtube-circle${snsIconColor }"></i></a></li>
        <li><a href="https://blog.naver.com/macrogen_official" target="_blank"><i class="icon icon-blog-circle${snsIconColor }"></i></a></li>
        <li><a href="https://www.linkedin.com/company/macrogen" target="_blank"><i class="icon icon-linkedin-circle${snsIconColor }"></i></a></li>
    </ul>
    <div class="btn_eng">
        <a href="#" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
    </div>
</div>
