<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	This is the before !<BR>
	<!-- 静态编译<%-- <%@ include , servlet容器会在翻译这个文件之前把内容加载到当前页面,并且目标页面的所有内容都将和本页面编译到同一个文件 --%>-->
	<%@ include file="/includeJspFile1.jsp"  %> <BR>
	This is the after !<BR>
	<h1>This is includefied=<font color="red" font="楷体"><%=includeProperty %></font></h1>
	<%@ include file="/includeJspFile.jsp"  %> <BR>
</body>
</html>