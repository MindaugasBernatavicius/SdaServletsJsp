<%@ page import = "java.io.*,java.util.*" %>
<%String title = "Accessing Request Param";%>

<html>
    <head>
        <title><% out.print(title); %></title>
    </head>

   <body>
        <center>
            <h2>Simple arithmetic... or is it?</h2>
            <p>10 / 0 = ${10 div 0}<p>
        </center>
        <hr>

        <center>
            <h2><% out.print(title); %></h2>
        </center>
        <div align = "center">
            <p>Using param: http://localhost:8888/ex4_jsp_el/?username=${param["username"]}</p>
            <p>The entire query string: http://localhost:8888/ex4_jsp_el/?${pageContext.request.queryString}</p>
        </div>
        <hr>

        <center>
            <h2>Accesing request header</h2>
        </center>
        <div align = "center">
            <p>${header["user-agent"]}</p>
        </div>
        <hr>
   </body>
</html>