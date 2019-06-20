<%@page language="java" import = "java.io.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Introduce yourself!</title>
    </head>
    <body>
        <!-- 0. Request parameters -->
        <center>
            <h2>HTTP Request Example</h2>

            <form action="welcome.jsp">
                <p>Guestname:<input type="text" name="guestName"/>
                <input type="submit" name="btnSubmit" value="submit"/>
            </form>
            <hr>
        </center>
        <!-- 1. Request headers and other info -->
        <center>
            <h2>HTTP Request Example</h2>

            <table width = "100%" border = "1" align = "center">
                <tr bgcolor = "#949494">
                <th>Header Name</th>
                <th>Header Value(s)</th>
                </tr>
                <%
                    Enumeration headerNames = request.getHeaderNames();
                    while(headerNames.hasMoreElements()) {
                        String paramName = (String)headerNames.nextElement();
                        out.print("<tr><td>" + paramName + "</td>\n");
                        String paramValue = request.getHeader(paramName);
                        out.println("<td> " + paramValue + "</td></tr>\n");
                    }
                %>
            </table>
            <hr>
        </center>

        <!-- 2. Response -->
        <center>
            <h2>HTTP Header Response: Auto Refresh Header Example</h2>

            <% // Set refresh, autoload time as 5 seconds
                response.setIntHeader("Refresh", 5);

                // Get current time
                Calendar calendar = new GregorianCalendar();

                String am_pm;
                int hour = calendar.get(Calendar.HOUR);
                int minute = calendar.get(Calendar.MINUTE);
                int second = calendar.get(Calendar.SECOND);

                if(calendar.get(Calendar.AM_PM) == 0)
                   am_pm = "AM";
                else
                   am_pm = "PM";
                   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
                   out.println("Current Time is: " + CT + "\n");
            %>
            <hr>
        </center>

        <!-- 3. Sessions -->
        <center>
            <h2>Session Example</h2>
            <a href="session.jsp">Session.jsp</a>
            <hr>
        </center>

        <!-- 4. Application scope  -->
        <center>
            <% Integer hitsCount = (Integer)application.getAttribute("hitCounter");
                if( hitsCount == null || hitsCount == 0 ) {
                    /* First visit */
                    out.println("Welcome to this page!");
                    hitsCount = 1;
                } else {
                    /* return visit */
                    out.println("Welcome back this page!");
                    hitsCount += 1;
                }
                application.setAttribute("hitCounter", hitsCount);
            %>

            <p>Total number of visits: <%= hitsCount %></p>
            <hr>
        </center>

        <!-- 4. Config object -->
        <center>
            <h2>Config object</h2>
            <p>Servlet name (need to open as servlet): <%= config.getServletName() %></p>
            <hr>
        </center>

        <!-- 5. Context parameter -->
        <center>
            <h2>Context parameter</h2>
            <p>dbUrl: <%= pageContext.getServletContext().getInitParameter("dbUrl") %></p>
            <p>rootDbUser: <%= application.getInitParameter("dbUser") %></p>
            <hr>
        </center>
    </body>
</html>