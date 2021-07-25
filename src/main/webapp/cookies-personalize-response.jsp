<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Tolstjak
  Date: 4/5/2021
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Personalize Response</title>
</head>

<%
    // read form data
    String favoriteLanguage = request.getParameter("favoriteLanguage");
    // encode cookie data... handle case of language with spaces
    String encodedFavoriteLanguage = URLEncoder.encode(favoriteLanguage, StandardCharsets.UTF_8);

    // create cookie
    Cookie cookie = new Cookie("myApp.favoriteLanguage", encodedFavoriteLanguage);

    // set life span cookie (total number of seconds)
    cookie.setMaxAge(60*60*24*365);     // <-- for one year

    response.addCookie(cookie);
%>

<body>
    Thanks! We set your favorite language to: ${param.favoriteLanguage}<br/><br/>

    <a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>
