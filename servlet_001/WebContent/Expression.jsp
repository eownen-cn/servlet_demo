<%@page import="org.apache.catalina.connector.Connector"%>
<%@page import="org.denny.bean.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg1 = "application !!!" ;
		String msg2 = "pageContext !!!" ;
		String msg3 = "session !!!" ;
		String msg4 = "request !!!" ;
		pageContext.setAttribute("msg2", msg2) ;
		session.setAttribute("msg3", msg3) ;
		request.setAttribute("msg4", msg4) ;
		application.setAttribute("msg1", msg1) ;
		
		String var = "The is the varable !" ;
		final String finalVal = "This is the fianl String !" ;		
		Book b1 = new Book("思维风暴",28.8) ;
		Book b2 = new Book("PHP网络编程",39.5) ;
		Book b3 = new Book("Java程序设计",99.8) ;
		
		Set<Book> ts = new TreeSet<Book>(new Comparator<Book>() {
		    @Override
		    public int compare(Book a, Book b) { 
		        return a.getPrice() > b.getPrice() ? -1 : 1; // 小.compareTo(大) 升序，反之则降序
		    }
		}) ;
		Map<String,Object> tm = new TreeMap<String,Object>(new Comparator<String>(){
			@Override
		    public int compare(String a, String b) { 
		        return a.compareTo(b); // 小.compareTo(大) 升序，反之则降序
		    }
		}) ; 
		
		Set<? super Book> hs = new HashSet<Book>() ; 
		Map<String,Object> hm = new HashMap<String,Object>() ; 
		ts.add(b1) ;
		ts.add(b2) ;
		ts.add(b3) ;
		
		
		hs.add(b1) ;
		hs.add(b2) ;
		hs.add(b3) ;
		tm.put("ts", ts) ;
		hm.put("hm", hs) ;
		pageContext.getServletContext().getContextPath() ;
		request.setAttribute("a1", var) ; // standard String
		request.setAttribute("a2", finalVal) ; // final String
		request.setAttribute("a3", ts); // TreeSet
		request.setAttribute("a4", hs); // HashSet
		request.setAttribute("a5", tm); // TreeMap
		request.setAttribute("a6", hm); // HashMap
		request.getRequestDispatcher("/ExpressionTarget.jsp").forward(request, response) ;
		%>
		
		 <%
		
	%>
	
</body>
</html>