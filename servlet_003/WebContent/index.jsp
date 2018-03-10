<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,org.denny.dynamictag.vo.*"%>
<%@ taglib uri="http://org.denny.mytags" prefix="t"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定义标签的使用</title>
</head>
<body>
	通过自定义标签的使用:<t:get_ip/><br>
	<t:get_content>hello world !!!</t:get_content><br>
	<%
		String username = "denny" ;
		pageContext.setAttribute("uname",username) ;
	%>
	<t:get_content>${uname}</t:get_content><br>
	<h2>---------------------------------------------------------</h2>
	<%
		boolean gender = true ;
		pageContext.setAttribute("gender",gender) ;
	%>
	<t:if test="${gender }">男</t:if>
	<t:if test="${not gender }">女</t:if>
	<br>
	<h2>---------------------------------------------------------</h2>
	<%
		List<Book> books = new ArrayList<Book>() ;
		Set<Book> bookSet = new HashSet<Book>() ;
		Map<String,Set<Book>> bookMap = new HashMap<String,Set<Book>>();
		
		Book b1 = new Book("Java开发",39.8) ;
		Book b2 = new Book("Linux开发",29.8) ;
		Book b3 = new Book("PHP开发",49.8) ;
		books.add(b1) ;
		books.add(b2) ;
		books.add(b3) ;
		bookSet.add(b1) ;
		bookSet.add(b2) ;
		bookSet.add(b3) ;
		bookMap.put("第一个书架", bookSet) ;
		bookMap.put("第二个书架", bookSet) ;
		pageContext.setAttribute("books", books) ;
		pageContext.setAttribute("bookSet", bookSet) ;
		pageContext.setAttribute("bookMap",	bookMap) ;
	%>
	<t:forEach itorator="${books }" var="item">
		${item } <br>
		${item.name } | ${item.price }<br><br>
	</t:forEach>
</body>
</html>