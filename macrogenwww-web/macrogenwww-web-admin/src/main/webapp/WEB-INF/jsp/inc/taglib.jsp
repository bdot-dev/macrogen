<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"
%><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"
%><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"
%><%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"
%><%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"
%><%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"
%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"
%><%@ taglib prefix="code" uri="/WEB-INF/tlds/code.tld"
%><% pageContext.setAttribute("newline", "\n");
%>
<spring:eval var="publicUrl" expression="@propConf.getProperty('globals.atch.public.url')"/>
<c:choose>
	<c:when test="${langId eq 'en' }">
		<c:set var="lang" value="En" />
	</c:when>
	<c:otherwise>
		<c:set var="lang" value="Ko" />
	</c:otherwise>
</c:choose>
