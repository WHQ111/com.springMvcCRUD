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
    <h1>员工列表</h1>
    
    <table>
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
                <th>EDIT</th>
                <th>DELETE</th>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
