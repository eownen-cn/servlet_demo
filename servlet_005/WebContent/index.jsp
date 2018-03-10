<%@page import="java.util.*"%>
<%@page import="org.denny.bean.Student"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL标签库 常用标签的使用范例</title>
<style type="text/css">
.red {
	background: red;
	color: white;
}

.black {
	background: black;
	color: yellow;
}
</style>
</head>
<body>
	-------------------------------- c:set
	将变量存放到指定域中--------------------------------------------
	<br>
	<c:set var="name" value="Denny" scope="session" />
	${name }
	<br>
	<%
		out.print(pageContext.getAttribute("name") + "<br>");
		out.print(session.getAttribute("name") + "<br>");
	%>
	-------------------------------- c:set
	为bean的属性赋值----------------------------------------------
	<br>
	<%
		Student stu = new Student();
		pageContext.setAttribute("student", stu);
	%>
	<c:set property="name" value="张三" target="${pageScope.student }" />
	<c:set property="age" value="24" target="${pageScope.student }" />
	student => ${student} -------------------------------- c:set
	为Map赋值----------------------------------------------
	<br>
	<%
		Map<String, Object> map = new HashMap<>();
		pageContext.setAttribute("map", map);
	%>
	<!-- 此处的property作为map的key,value则作为key对应的值 -->
	<c:set value="java" property="hello" target="${pageScope.map }" />
	<c:set value="tiger" property="scott" target="${pageScope.map }" />
	${map }
	<br> hello=>${map.hello }
	<br> scott=>${map.scott }
	<br> -------------------------------- c:remove
	删除域中的变量----------------------------------------------
	<br>
	<c:set var="school" value="page_school" />
	<c:set var="school" value="req_school" scope="request" />
	<c:set var="school" value="ses_school" scope="session" />
	<c:set var="school" value="app_school" scope="application" />
	删除之前
	<br> pageScope => ${pageScope.school }
	<br> requestScope => ${requestScope.school }
	<br> sessionScope => ${sessionScope.school }
	<Br> applicationScope => ${applicationScope.school }
	<br>

	<c:remove var="school" scope="session" />
	<!-- 指定删除sessionScope中的school变量 -->
	删除之后
	<br> pageScope => ${pageScope.school }
	<br> requestScope => ${requestScope.school }
	<br> sessionScope => ${sessionScope.school }
	<Br> applicationScope => ${applicationScope.school }
	<br>
	<c:remove var="school" />
	<!-- 不指定任何scope执行删除 -->
	删除时,不指定scope后果
	<br> pageScope => ${pageScope.school == null ? "null" : 0 }
	<br> requestScope => ${requestScope.school == null ? "null" : 0  }
	<br> sessionScope => ${sessionScope.school == null ? "null" : 0  }
	<Br> applicationScope => ${applicationScope.school == null ? "null" : 0  }
	<br> -------------------------------- c:catch
	----------------------------------------------
	<br>
	<c:catch var="e">
		<%
			Object obj = null;
				obj.toString();
		%>
	</c:catch>
	e =>
	<c:out value="${e }"></c:out>
	<br> -------------------------------- c:out
	----------------------------------------------
	<br>
	<%
		Student stu2 = new Student("张三", 28);
		pageContext.setAttribute("stu2", stu2);
	%>
	<c:out value="${stu2.name }" default="无名氏"></c:out>
	<br>
	<c:out value="${stu2.age }" default="无名氏"></c:out>
	<br>
	<c:out value="${stu2 }" default="无名氏"></c:out>
	<br>
	<c:out value="${stu22 }" default="无名氏"></c:out>
	<br>
	<c:set var="test" value="<h1>我爱中国</h1>"></c:set>
	<c:out value="${test }"></c:out>
	<!-- EL表达式会默认忽略对XML的解析 -->
	<c:out value="${test }" escapeXml="false"></c:out>
	<!-- 解除EL表达式对XML解析的忽略 -->
	-------------------------------- c:if
	----------------------------------------------
	<br>
	<c:set var="x" value="abc"></c:set>
	<c:if test="${x == 'abcc' }">
		<c:out value="相等" />
	</c:if>
	-------------------------------- c:choose
	----------------------------------------------
	<br>
	<%
		Student student1 = new Student("Denny", 8);
		Student student2 = new Student("Ross", 20);
		Student student3 = new Student("Jack", 54);
		Student student4 = new Student("Blake", 28);
		Student student5 = new Student("Smith", 38);
		Student student6 = new Student("Tom", 62);
		pageContext.setAttribute("student1", student1);
		pageContext.setAttribute("student2", student2);
		pageContext.setAttribute("student3", student3);
		pageContext.setAttribute("student4", student4);
		pageContext.setAttribute("student5", student5);
		pageContext.setAttribute("student6", student6);
	%>
	<c:set var="student" value="${student1 }" />
	<c:out value="年龄段:" />
	<c:choose>
		<c:when test="${student.age <=10 }">
			<c:out value="孩童" />
			<br>
			<c:out value="${student }" />
			<br>
		</c:when>
		<c:when test="${student.age <=20 }">
			<c:out value="青少年" />
			<br>
			<c:out value="${student }" />
			<br>
		</c:when>
		<c:when test="${student.age <=30 }">
			<c:out value="青年" />
			<br>
			<c:out value="${student }" />
			<br>
		</c:when>
		<c:when test="${student.age <=50 }">
			<c:out value="中年" />
			<br>
			<c:out value="${student }" />
			<br>
		</c:when>
		<c:when test="${student.age <=60 }">
			<c:out value="中老年" />
			<br>
			<c:out value="${student }" />
			<br>
		</c:when>
		<c:otherwise>
			<c:out value="老年" />
			<br>
			<c:out value="${student }"></c:out>
			<br>
		</c:otherwise>
	</c:choose>
	-------------------------------- c:forEach
	----------------------------------------------
	<br>
	<%
		Set<Student> hs = new HashSet<>();
		//Set<Student> ts1 = new TreeSet<Student>((a,b)->a.getAge()>b.getAge() ? -1 : 1) ; // JDK1.8以上版本支持
		Set<Student> ts = new TreeSet<Student>(new Comparator<Student>() {
			@Override
			public int compare(Student a, Student b) {
				return a.getAge() < b.getAge() ? -1 : 1; // 小.compareTo(大) 升序，反之则降序
			}
		}); // JDK1.8或以下版本支持

		hs.addAll(Arrays.asList(student1, student2, student3, student4,
				student5, student6));
		ts.addAll(Arrays.asList(student1, student2, student3, student4,
				student5, student6));
		pageContext.setAttribute("hs", hs);
		pageContext.setAttribute("ts", ts);
		Map<String, Object> hm = new HashMap<>();
		hm.put("hs", hs);
		hm.put("ts", ts);
		Map<String, Object> tm = new TreeMap<>();
		tm.put("hs", hs);
		tm.put("ts", ts);
		pageContext.setAttribute("hm", hm);
		pageContext.setAttribute("tm", tm);
	%>
	<br>
	<c:out value="print hs start------- " />
	<br>
	<c:forEach items="${hs }" var="o">
		<c:out value="${o }" />
		<br>
	</c:forEach>
	<c:out value="print hs end------- " />
	<br>
	<br>

	<c:out value="print ts start------- " />
	<br>
	<c:forEach items="${ts }" var="o">
		<c:out value="${o }" />
		<br>
	</c:forEach>
	<c:out value="print ts end------- " />
	<br>
	<br>

	<c:out value="print hm start------- " />
	<br>
	<c:forEach items="${hm }" var="o">
		<c:out value="${o}" />
		<br>
		<c:out value="${o}" />
		<br>
	</c:forEach>
	<c:out value="print hm end------- " />
	<br>
	<br>

	<c:out value="print tm start------- " />
	<br>
	<br>============TreeMap中的HashSet============
	<br>
	<c:forEach items="${tm.hs }" var="o">
		<c:out value="${o}" />
		<br>
	</c:forEach>
	<br>============TreeMap中的TreeSet============
	<br>
	<c:forEach items="${tm.ts }" var="o">
		<c:out value="${o}" />
		<br>
	</c:forEach>
	<br>
	<c:out value="print tm end------- " />
	<br>
	<br>
	<br>-----------------------
	使用forEach迭代Collections中指定位置的内容--------------------------------
	<br>
	<!-- 
	 	step -> 步长
	 	begin -> 开始索引
	 	end -> 结束索引
	  -->
	<c:forEach items="${ts}" var="o" step="2" begin="0" end="7"
		varStatus="vs">
		<!-- 0 2 4 -->
		<c:out value="${o} | " />
		<c:out value="vs.index=>${vs.index } | " />
		<!-- 当前位置的索引 -->
		<c:out value="vs.count=>${vs.count } | " />
		<!-- 到当前位置是第几次遍历 -->
		<c:out value="vs.first=>${vs.first } | " />
		<!-- 当前是否是第一次遍历 -->
		<c:out value="vs.last=>${vs.last } | " />
		<!-- 当前是否是最后一次遍历 -->
		<c:out value="vs.end=>${vs.end }" />
		<!-- 返回forEach属性中的end属性值 -->
		<br>
	</c:forEach>
	-----------------------
	使用forEach迭代Collections中指定位置的内容--------------------------------
	<br>
	<br>-----------------------
	使用forEach遍历并使用varStatus实现隔行换色----------------------------
	<br>
	<c:forEach items="${ts }" var="o" varStatus="vs">
		<p class="${vs.index % 2 == 0 ? 'red' : 'black' }">
			<c:out value="${o }" />
			<br>
		</p>
	</c:forEach>
	<br>----------------------- c:fmt
	格式化日期----------------------------
	<br>
	<%
		Date d = new Date();
		pageContext.setAttribute("now", d);
	%>
	now time is =>
	<font color="purple">${now }</font>
	<br> now time is =>
	<font color="green"> <fmt:formatDate value="${now }"
			pattern="yyyy年MM月dd日  HH时mm分ss秒  SS毫秒" />
	</font>
	<br> 在form表单中使用:
	<br>
	<form>
		<fmt:parseDate pattern="yyyy/MM/dd" value="1993/08/06"
			var="mybirthday"></fmt:parseDate>
		<!-- 将字符串转为日期格式,存储到变量中 -->
		<fmt:formatDate value="${mybirthday}" pattern="yyyy年MM月dd日"
			var="birthday" />
		<!-- 将新的日期格式化,存储到变量中 -->
		<input type="text" name="birth" value="${birthday }" class="black" /><br>
	</form>
	<br>
	<br>----------------------- c:fmt
	格式化数字----------------------------
	<br>
	default : <fmt:formatNumber value="${123456678 }" /><br>
	use groupingUsed[false] : <fmt:formatNumber value="${123456678 }" groupingUsed="false"/><br>
	use maxIntegerDigits[4] : <fmt:formatNumber value="${12345.5667 }" maxIntegerDigits="4"/><br>
	use minIntegerDigits[4] : <fmt:formatNumber value="${12345.5667 }" minIntegerDigits="4"/><br>
	use maxFractionDigits[2] : <fmt:formatNumber value="${12345.5647 }" maxFractionDigits="2" /><br>
	use minFractionDigits[3] : <fmt:formatNumber value="${12345.000089 }" minFractionDigits="6"/><br>
	
</body>
</html>