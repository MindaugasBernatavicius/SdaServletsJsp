<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Welcome</title>
    </head>
    <body>
        <h3>Welcome <%= request.getParameter("guestName") %></h3>
        <p>User Agent: <%= request.getHeader("User-Agent") %></p>
        <p>Guest Language: <%= request.getLocale() %></p>
        <p><%= config.getServletName() %></p>
    </body>
</html>