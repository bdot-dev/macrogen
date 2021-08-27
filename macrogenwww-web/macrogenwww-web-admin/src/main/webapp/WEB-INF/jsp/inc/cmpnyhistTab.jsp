<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<ul class="tab" style="margin: 30px;">
	<li><a href="/${langId}/cmpnyhist/list" ${ param.current eq 'cmpnyhist' ? 'class="current"' : '' }>연혁 내용 관리 (${ langId eq 'en' ? '영문' : '국문' })</a></li>
	<li><a href="/${langId}/cmpnyhist/group/list" ${ param.current eq 'group' ? 'class="current"' : '' }>연혁 그룹 관리 (국문/영문)</a></li>
	<li><a href="/${langId}/cmpnyhist/group/photo/list" ${ param.current eq 'photo' ? 'class="current"' : '' }>연혁 그룹 사진 관리 (국문/영문)</a></li>
</ul>
