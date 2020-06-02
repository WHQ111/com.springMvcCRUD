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
<%
    pageContext.setAttribute("ctp", request.getContextPath());
%>
<head>
    <title>员工列表</title>
</head>
<body>
<script type="text/javascript" src="${ctp }/scripts/jquery-3.4.1.js "></script>

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
                <td>
                    <a href="${ctp }/emp/${emp.id}" class="DelBut">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="toAddPage">添加员工</a>

    <form id="deleteFrom" action="${ctp }/emp/${emp.id}" method="post">
        <input type="hidden" name="_method" value="DELETE"/>

    </form>
    <script>
        $(function () {
            $(".DelBut").click(function(){

                //改变表单指向
                $("#deleteFrom").attr("action", this.href);
                //提交表单
                $("#deleteFrom").submit();
                return false;
            })
        });
    </script>

</body>
</html>
