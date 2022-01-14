<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
</head>
<body>
	<div>request.getServerName():<%= request.getServerName() %></div>
	<div>request.getServerPort():<%= request.getServerPort() %></div>
	<%-- <div>request.getServerName():<%= request.getRemoteAddr() %></div> --%>
<%

	String session_name = "";
	String session_value = "";

	Enumeration enum_01 = session.getAttributeNames();
	int i = 0;
	while (enum_01.hasMoreElements()) {
		i++;

		String s_name = enum_01.nextElement().toString();
		String s_value = session.getAttribute(s_name).toString();
		out.println("<div>SESSION NAME[ " + s_name + " ] SESSION VALUE [ " + s_value + " ] </div>");
	}
%>
</body>
</html>