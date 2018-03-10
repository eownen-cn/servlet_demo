<%@page import="java.applet.Applet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			out.print(Applet.ALLBITS) ;
			out.print("<br>");
			out.write(new char[]{'y','o','u',' ','a','r','e',' ','t','h','e',' ','b','e','s','t',' ','!'}) ;
			out.print(Float.parseFloat("3.14")) ;
		%>
</body>
</html>