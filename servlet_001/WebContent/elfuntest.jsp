<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@taglib uri="http://org.denny.diyelfunction/jsp/el/functions" prefix="MyElFunction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>
</head>
<body>
${MyElFunction:toUpper("Hello world !!!")}<BR>
${MyElFunction:toLower("HELLO WORLD !!! , 世界你好!")}
</body>
</html>