<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Upload</title>
</head>

<body>
<c:choose>
	<c:when test="${result ne 'OK'}">
		<script type='text/javascript'>
			alert("${msg}");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<script type='text/javascript'>
			window.parent.CKEDITOR.tools.callFunction(
				'${CKEditorFuncNum != null && CKEditorFuncNum != '' ? CKEditorFuncNum : 1}'
				, '${fileUrl}', '');
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>
