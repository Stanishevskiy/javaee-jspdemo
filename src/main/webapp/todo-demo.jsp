<%--
  Created by IntelliJ IDEA.
  User: Tolstjak
  Date: 4/4/2021
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>To Do List</title>
</head>
<body>
    <%-- 1: Create HTML Form   --%>
    <form action="todo-demo.jsp">
        Add new item: <input type="text" name="theItem"/>

        <input type="submit" value="Submit">
    </form>

    <%-- 2: Add new item to "To Do" list --%>
    <%
        // get the To Do items from the session
        List<String> items = (List<String>) session.getAttribute("myToDoList");

        // if the To Do item doesn't exists, than create a new one
        if (items == null) {
            items = new ArrayList<>();
            session.setAttribute("myToDoList", items);
        }

        // see if there is form data to add
        String theItem = request.getParameter("theItem");
        boolean isItemNotEmpty = (theItem != null) && (theItem.trim().length() > 0);
        boolean isItemNotDuplicate = isItemNotEmpty && (!items.contains(theItem.trim()));
        if (isItemNotEmpty && isItemNotDuplicate) {
            items.add(theItem);
        }
    %>

    <%-- 3: Display all "To Do" item from session --%>
    <hr>
    <b>To List Items:</b><br/>
    <ol>
        <%
            for (String item : items) {
                out.println("<li>" + item + "</li>");
            }
        %>
    </ol>

</body>
</html>
