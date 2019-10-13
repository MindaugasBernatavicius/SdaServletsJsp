<html>
    <head>
        <meta charset="UTF-8">
        <title>Some demo</title>
        <link href='https://fonts.googleapis.com/css?family=Gruppo' rel='stylesheet'>
        <style>
            body {
                font-family: Gruppo;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <h2>Servlet examples:</h2><hr/>

        <h3>[Ex 0]: Generic servlet</h3>
        <a href="/generic_servlet">Click here</a><br><br>

        <h3>[Ex 1]: Hello servlet</h3>
        <a href="/hello">Click here</a><br><br>

        <h3>[Ex 2]: User information servlet (working w/ query data)</h3>
        <a href="/userinfo?firstName=Mindaugas&lastName=Bernatavi%C4%8Dius">
            Click here for /userinfo?firstName=Mindaugas&lastName=Bernatavi&#x10D;ius</a><br><br>

        <h3>[Ex 3]: Form data</h3>
        <a href="/servlet_helpers/ex3_registration/register.jsp">Click here to open a registration form</a><br><br>

        <h3>[Ex 4]: Servlet Filters</h3>
        <a href="/servlet_helpers/ex4_servletfilters/login.html">Click here to open a login form</a><br><br>

        <h3>[Ex 5]: Working with headers and status codes</h3>
        <a href="/ShowRequestHeaders">Click here to see the request headers</a><br><br>
        <a href="/ContentTypeDemo">Click here to obtain an excel file w/ custom content type</a><br><br>
        <a href="/StatusCodeDemo">Click here to see the status code being set</a><br><br>

        <h3>[Ex 6]: Session data</h3>
        <a href="/servlet_helpers/ex6_sessiondata/ex1_hiddenfields/GuestBook.html">Hidden form fields example</a><br><br>
        <a href="/servlet_helpers/ex6_sessiondata/ex2_urlrewriting/GuestBook.html">URL rewriting example</a><br><br>
        <a href="/servlet_helpers/ex6_sessiondata/ex3_cookies/GuestBook.html">Cookies example</a><br><br>
        <a href="/servlet_helpers/ex6_sessiondata/ex4_session/GuestBook.html">Session example</a><br><br>

        <h3>[Ex 7]: File upload</h3>
        <a href="/servlet_helpers/ex7_fileupload/FileUpload.html">Click here</a><br><br>

        <h3>[Ex 8]: Debugging servlets</h3>
        <a href="/ContextLog">Context logging</a><br><br>
        <a href="/DebuggingServletsLog4J">Log4J</a><br><br>

        <h3>[Ex 9]: Globalization</h3>
        <a href="/DetectLocale">Detecting locale</a><br><br>
        <a href="/LanguageSettingsDemo">Language settings</a><br><br>
        <a href="/LocaleSpecificDemo">Locale specific operations (currency and dates)</a><br><br>
        <a href="/GlobalizedServletSearch">Search</a><br><br>

        <h3>[Ex 10]: Servlet initialization parameters</h3>
        <a href="/ServletInitialization?name=Mindaugas">Click here</a><br><br>

        <h3>[Ex 11]: Asynchronous processing</h3>
        <a href="/ProgressServlet">Click here for synchronous processing</a><br><br>
        <a href="/ProgressAsyncServlet">Click here for asynchronous processing</a><br><br>

        <h3>[Ex 12]: Exception handling</h3>
        <a href="/SomeNonExistentServlet">Click here to go to non existent servlet</a><br><br>

        <hr>
        <h2>JSP examples:</h2><hr/>

        <h3>[Ex 0]: JSP tags</h3>
        <a href="/jsp_examples/ex0_jsp_tags">Click here</a><br><br>

        <h3>[Ex 1]: JSP builtin objects</h3>
        <a href="/jsp_examples/ex1_jsp_builtins">Click here to see the builtin example</a><br><br>
        <a href="/Well">Click here to open the same JSP page as servlet</a><br><br>

        <h3>[Ex 2]: JSP hanling errors</h3>
        <a href="/jsp_examples/ex2_jsp_errorhandling">Click here to see a custom error page</a><br><br>

        <h3>[Ex 3]: JSP action tags</h3>
        <a href="/jsp_examples/ex3_jsp_actions">Click here</a><br><br>

        <h3>[Ex 4]: JSP expression language - EL</h3>
        <a href="/jsp_examples/ex4_jsp_el">Click here</a><br><br>

        <h3>[Ex 5]: JSTL - standard tag library</h3>
        <a href="/jsp_examples/ex5_jsp_jstl">Click here</a><br><br>

        <h3>[Ex 6]: Custom tag library</h3>
        <a href="/jsp_examples/ex6_jsp_customtaglib">Click here</a><br><br>

        <hr>
        <h2>MVC app:</h2><hr/>

        <h3>JSP</h3>
        <a href="/exZ_mvcproject/student-record.jsp">Click here</a><br><br>

        <h3>Servlet</h3>
        <a href="/student-record?id=1">Click here</a><br><br>

    </body>
</html>