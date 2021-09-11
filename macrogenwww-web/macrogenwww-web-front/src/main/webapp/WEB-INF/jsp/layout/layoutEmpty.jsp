<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<c:if test="${DEVICE_TYPE eq 'pc' }">
	<%@ include file="layoutEmptyPc.jsp"%>
</c:if>
<c:if test="${DEVICE_TYPE eq 'mobl' }">
	<%@ include file="layoutEmptyMobl.jsp"%>
</c:if>
