<%--
  Created by IntelliJ IDEA.
  User: Iuliia_Savich
  Date: 6/16/2016
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Example</title>
</head>
<body>
    <h3>Choose an author:</h3>
    <form method="get">
        Name:
        <input type="text" name="name">
        <br/>
        Surname:
        <input type="text" name="surname">
        <br/>
        <input type="submit" value="Query">
    </form>

    <%
        String[] name = request.getParameterValues("name");
        String[] surname = request.getParameterValues("surname");
        if (name != null && surname != null) {
    %>
    <h3>You input:</h3>
    <ul>
        <li>Name:   <%= name[0] %></li>
        <li>Surname:   <%= surname[0] %></li>
        <li>Date:   <%= (new java.util.Date()) %> </li>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
    <%
        }
    %>
</body>
</html>
