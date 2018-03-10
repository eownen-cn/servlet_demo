<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Oper String => <small>initParam.test => ${initParam.test}</small></h2>
	fn:length => " hello " => ${fn:length(" hello ") }<br>
	fn:trim => fn:length(fn:trim(" hello ")) => ${fn:length(fn:trim(" hello ")) }<br>
	fn:substring 0 5 => ${fn:substring(initParam.test,0,5) }<br>
	fn:substring 6 12 => ${fn:substring(initParam.test,6,12) }<br>
	fn:substring 12 16 => ${fn:substring(initParam.test,12,16) }<br>
<%-- 	fn:substring 12 => ${fn:substring(initParam.test,12) }<br> 错误的范例 --%>
	fn:substringBefore " " => ${fn:substringBefore("hello world"," ")}<br>
	fn:substringAfter " " => ${fn:substringAfter("hello world"," ")}<br>
	fn:contains "hello" => ${fn:contains(initParam.test,"hello") }<br>
	fn:indexOf "l" => ${fn:indexOf(initParam.test,"l") }<br>
	fn:toUpperCase "hello world !!!" => ${fn:toUpperCase(initParam.test) }<br>
	fn:endsWith "!!!" => ${fn:endsWith(initParam.test,"!!!") }<br>
	fn:length => ${fn:length(initParam.test) }<br>
	fn:replace " " = "*" => ${fn:replace(initParam.test," ","*") }<br>
	<c:set var="sarr" value="${fn:split('hello world !!!',' ')}"  />
	<c:set var="length" value="${fn:length(sarr) }" />
	<c:set var="sarr2" value="${fn:join(sarr,' - ') }" />
	length => <c:out value="${length}"  /><br>
	<c:out value="${sarr2 }" /><br>
</body>
</html>