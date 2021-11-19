<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html lang="${rc.locale.language}">
<head>
	<title><decorator:title />MACROGEN</title>
	<c:import url="/inc/htmlHead" />
	<decorator:head />
</head>

<body class="<decorator:getProperty property="body.class" />" data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="empty" data-layout-type="${layout_type }">

	<decorator:body />

</body>
</html>
