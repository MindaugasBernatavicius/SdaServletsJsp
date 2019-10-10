<html>
    <head>
        <title>Using JavaBeans in JSP</title>
    </head>

    <body>
        <!-- 0. useBean, setProperty, getProperty -->
        <center>
            <h2>Using JavaBeans in JSP</h2>
            <jsp:useBean id = "beanId" class = "cf.mindaugas.model.TestBean" />
            <%-- If we uncomment the line below, the default message will be changed to the provided one --%>
            <%-- <jsp:setProperty name = "beanId" property = "message" value = "Hello JSP..." /> --%>
            <p>Got the message... <jsp:getProperty name = "beanId" property = "message" /></p>
            <hr>
        </center>

        <!-- 1. include -->
        <jsp:include page="footer.html"/>
    </body>
</html>