<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />MACROGEN</title>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="pc" data-layout-type="${layout_type }">

	<decorator:body />

</body>
</html>
