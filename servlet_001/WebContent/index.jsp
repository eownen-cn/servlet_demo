<%@page import="java.util.*"%>
<%@page import="org.denny.bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%-- <body>
	<%!
		public Map<String,Set<Book>> map = new HashMap<>() ;
		Set<Book> bookSet = new HashSet<Book>() ;
		public Set<Book> add(Set<Book> s){
			s.add(new Book("Denny",89.8));
			s.add(new Book("YL-BLOG",89.8));
			s.add(new Book("The Classic",89.8));
			return s ;
		}
		public Map<String,Set<Book>> put(){
			map.put("书籍",add(bookSet));
			return map ;
		}
	%>
	
	<%
		session.setAttribute("goods",put()) ;
		session.setAttribute("abc",123) ;
		// 跳转,看看能不能在别的页面接收到传入session的数据
		%>
			<a href="index2.jsp">带着值跳转到index2.jsp</a>
			<time></time>
		
		<%

		
		
	%> --%>
	
</body>
</html>