<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/1
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>员工添加</h1>
<%--<form action="">--%>

<%--        lastName:<input type="text" name="lastName"/><br>--%>
<%--        email   :<input type="text" name="email"/><br>--%>
<%--        dept    :--%>
<%--            <select name="department.id">--%>
<%--                <c:forEach items="${depts }" var="deptItem">--%>
<%--                    <option value="${deptItem.id }">${deptItem.departmentName}</option>--%>
<%--                </c:forEach>--%>
<%--            </select>--%>
<%--                <input type="submit" value="提交"/>--%>

<%--        </select>--%>
<%--</form>--%>
<%
    pageContext.setAttribute("ctp", request.getContextPath());
%>

<%--@elvariable id="employee" type="com.atguigu.entity.Employee"--%>
<form:form action="${ctp }/emp" modelAttribute="employee" method="POST">
    lastName:<form:input path="lastName"/><br>
    email:<form:input path="email"/><br>
    dept:<form:select path="department.id" items="${depts }" itemLabel="departmentName" itemValue="id"/><br>
    <input type="submit" value="保存">
</form:form>
</body>
</html>
