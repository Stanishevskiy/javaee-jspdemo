<%--
  Created by IntelliJ IDEA.
  User: Tolstjak
  Date: 4/2/2021
  Time: 4:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Built-In Test</title>
</head>
<body>
    Request user agent: <%= request.getHeader("User-Agent") %>
    <br/><br/>
    Request language: <%= request.getLocale() %>
</body>
</html>
