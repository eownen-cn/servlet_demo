<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.denny.bean.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>

	body{
		color:red ;
		background-color:#000 ;
		font-family:'stxingkai' ;
		
		font-weidth:300;
	}

</style>
<body>
	<p>EL表达式取值</p>
	<h3>${msg1}</h3>
	<h4>${msg2}</h4>
	<h5>${msg3}</h5>
	<h6>${msg4}</h6>
	<hr color="red" />
	<strong>String = ${a1 }</strong><br>
	<strong>final String = ${a2 }</strong><br>
	<strong>TreeSet = ${a3 }</strong><br>
	<strong>HashSet = ${a4 }</strong><br>
	<strong>TreeMap = ${a5.ts }</strong><br>
	<strong>HashMap = ${a6.hm }</strong><br>
	<strong>ServletContextPath = ${pageContext.servletContext.contextPath }/ExpressionTarget.jsp</strong>
	
		
</body>
</html>