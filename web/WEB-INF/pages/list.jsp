<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/27
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工列表</title>
</head>
<body>

<%
    pageContext.setAttribute("ctp", request.getContextPath());
%>
    <h1>员工列表</h1>
    
    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>LastName</th>
            <th>Email</th>
            <th>DepartmentName</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        <c:forEach items="${emps}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.lastName}</td>
                <td>${emp.email}</td>
                <td>${emp.department.departmentName}</td>
                <td>
                    <a href="${ctp }/emp/${emp.id}">edit</a>
                </td>
                <td>DELETE</td>
            </tr>
        </c:forEach>
    </table>
    <a href="toAddPage">添加员工</a>

</body>
</html>
