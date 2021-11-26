<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<c:forEach var="result" items="${resultList }" varStatus="status">
	<c:choose>
		<c:when test="${result.thumbBassImageUseYn eq 'Y' }">
			<c:set var="imgUrl" value="${result.thumbBassImageCodeNm }" />
		</c:when>
		<c:otherwise>
			<c:set var="imgUrl" value="${publicUrl }${result.thumbFlpth }" />
		</c:otherwise>
	</c:choose>
	<li class="item">
		<a href="javascript:linkView(${result.nttSn })">
			<span class="img" style="background-image: url(${imgUrl })"></span>
			<span class="font-h7">${result.nttSj }</span>
			<span class="font-date"><fmt:formatDate value="${result.registDt }" pattern="yyyy.MM.dd" /></span>
		</a>
	</li>
</c:forEach>
