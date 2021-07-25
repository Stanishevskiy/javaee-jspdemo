<%@ page import="java.util.Arrays" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: Tolstjak
  Date: 4/2/2021
  Time: 6:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation Form</title>
</head>
<body>
    The student is confirmed:
    <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %>
    <br/>
    The student is confirmed (alternative syntax):
    ${param.firstName} ${param.lastName}
    <br/><br/>
    The student country:
    ${param.country}
    <br/><br/>
    The student's favorite programming language:
    ${param.favoriteLanguage}
    <br/><br/>
    The student's favorite programming languages: <br/>
    <ul>
        <%
            String[] langs = request.getParameterValues("favoriteLanguages");
            if (langs != null) {
                for (String lang : langs) {
                    out.println("<li>" + lang + "</li>");
                }
            }
        %>
    </ul>
    <br/><br/>
    <% out.println("----------------------"); %>
</body>
</html>
