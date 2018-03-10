<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="java.util.*,org.denny.bean.Book"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Map<String,Set<Book>> map = (Map)session.getAttribute("goods") ;
		if (map != null) {
			out.print("map的长度:" + map.size()) ;
			out.print("map的键:" + map.keySet()) ;
			out.println("遍历数据:") ;
			for(String b : map.keySet()){
				Set<Book> s = map.get(b) ;
				out.print(s.toString() + "\n") ;
			}
		} else {
			out.println("Map为空!") ;
		}
	%>
</body>
</html>