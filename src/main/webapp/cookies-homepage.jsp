<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: Tolstjak
  Date: 4/5/2021
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Homepage</title>
</head>
<body>
    <%
        String favoriteLanguage = "Java";

        // get the cookies from the browser request
        Cookie[] cookies = request.getCookies();
        // find our favorite language cookie
        if (cookies != null) {

            for (Cookie cookie : cookies) {

                if (cookie.getName().equals("myApp.favoriteLanguage")) {
                    String encodedFavoriteLanguage = cookie.getValue();
                    // decode cookie data...
                    favoriteLanguage = URLDecoder.decode(encodedFavoriteLanguage, StandardCharsets.UTF_8);
                    break;
                }
            }
        }
    %>

    <h2>Training Portal</h2><br/><br/>

    <h4>New Books for <%= favoriteLanguage %></h4><br/>
    <ol>
        <li>blah blah blah</li>
        <li>blah blah blah</li>
    </ol><br/><br/>

    <h4>Latest New reports for <%= favoriteLanguage %></h4><br/>
    <ol>
        <li>blah blah blah</li>
        <li>blah blah blah</li>
    </ol><br/><br/>

    <h4>Hot Jobs for <%= favoriteLanguage %></h4><br/>
    <ol>
        <li>blah blah blah</li>
        <li>blah blah blah</li>
    </ol><br/><br/>

    <hr/><br/>

    <a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>
