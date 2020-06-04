<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/1
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("ctp", request.getContextPath());
%>
<h1>员工修改</h1>
<%--@elvariable id="employee" type="com.atguigu.entity.Employee"--%>
<form:form action="${ctp }/emp/${employee.id}" modelAttribute="employee" method="post">
    <input type="hidden" name="_method" value="put"/>
    <input type="hidden" name="id" value="${employee.id}"/>
    email:<form:input path="email"/><br>
    dept:
        <form:select path="department.id" items="${depts}" itemLabel="departmentName" itemValue="id"/><br>
    <input type="submit" value="修改">
</form:form>
</body>
</html>
