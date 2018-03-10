<%@page import="org.apache.jasper.runtime.JspApplicationContextImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
</head>
<style>

	body{
		color:red ;
		background-color:#000 ;
	}

</style>
<body>
	<p>EL表达式取值</p>
	<h3>${msg1}</h3>
	<h4>${msg2}</h4>
	<h5>${msg3}</h5>
	<h6>${msg4}</h6>
	This is target of forward .... <%=new JspApplicationContextImpl()%>
</body>
</html>