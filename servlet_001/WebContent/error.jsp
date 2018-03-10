<%@ page contentType="text/html;charset=utf8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("当前异常信息:" + exception.getMessage());
	%>
</body>
</html>