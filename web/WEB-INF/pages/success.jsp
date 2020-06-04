<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/4
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    pageContext.setAttribute("ctp", request.getContextPath());
%>
<body>
<script src="web/scripts/jquery-3.4.1.js"></script>
<form action="${ctp }/test" method="post">
    <input name="username" value="yyy"/>
    <input name="password" value="123456">
    <input type="submit"/>
</form>

</body>
</html>
