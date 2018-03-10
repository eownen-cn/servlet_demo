<jsp:include page="/dynamicLoadingFile.jsp"></jsp:include><br> <!-- 动态包含 -->
<%@ page pageEncoding="UTF-8"%>
hello<br>
<jsp:include page="/dynamicLoadingFile.jsp"></jsp:include> <!-- 动态包含 --><br>
world<br>
<%-- the fileds of the includedFile<%=includeField %> 注意:这里是不允许使用包含页面中的变量的,因为其翻译后根本不再同一个.Java文件的.--%>
<jsp:include page="/dynamicLoadingFile.jsp"></jsp:include> <!-- 动态包含 -->