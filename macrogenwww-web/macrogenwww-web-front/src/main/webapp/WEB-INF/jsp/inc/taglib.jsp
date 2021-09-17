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
<spring:eval var="frontDomain" expression="@propConf.getProperty('globals.domain.www')"/>
<c:choose>
	<c:when test="${rc.locale.language eq 'en' }">
		<c:set var="lang" value="En" />
	</c:when>
	<c:when test="${rc.locale.language eq 'zh' }">
		<c:set var="lang" value="Zh" />
	</c:when>
	<c:otherwise>
		<c:set var="lang" value="Ko" />
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${DEVICE_TYPE eq 'pc' }">
		<c:set var="dev" value="Pc" />
	</c:when>
	<c:when test="${DEVICE_TYPE eq 'mobl' }">
		<c:set var="dev" value="Mobl" />
	</c:when>
    <c:when test="${DEVICE_TYPE eq 'tblt' }">
      <c:set var="dev" value="Tblt" />
    </c:when>
	<c:otherwise>
		<c:set var="dev" value="Pc" />
	</c:otherwise>
</c:choose>