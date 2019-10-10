<html>
    <head>
        <meta charset="UTF-8">
        <title>Some demo</title>
    </head>
    <body>
        <h2>Hello World!</h2><hr/>

        <h3>[DONE ex_0] Generic servlet:</h3>
        <a href="/generic_servlet">Click here</a><br><br>

        <h3>[DONE ex_1] Hello servlet:</h3>
        <a href="/hello">Click here</a><br><br>

        <h3>[DONE ex_2] User information servlet (working w/ query data):</h3>
        <a href="/userinfo">Click here for /userinfo</a><br><br>
        <a href="/userinfo?firstName=Mindaugas">Click here for /userinfo?firstName=Mindaugas</a><br><br>
        <!-- <a href="/userinfo?firstName=Mindaugas&lastName=Bernatavi%C4%8Dius">Click here for /userinfo?firstName=Mindaugas&lastName=Bernatavi&#x10D;ius</a><br><br> -->
        <a href="/userinfo?firstName=Mindaugas&lastName=Bernatavi%C4%8Dius">Click here for /userinfo?firstName=Mindaugas&lastName=Bernatavi&#x10D;ius</a><br><br>

        <h3>Servlet Filters :</h3>
        <a href="/exX_servletfilters/login.html">Click here to open a login form</a><br><br>

        <h3>Regitration servlet example showing form data example:</h3>
        <a href="/registration/register.jsp">Click here to register</a><br><br>

        <h3>Session data, hidden form fields example:</h3>
        <a href="/ex3_sessiondata/ex1_hiddenfields/GuestBook.html">Click here</a><br><br>

        <h3>Session data, URL rewriting example:</h3>
        <a href="/ex3_sessiondata/ex2_urlrewriting/GuestBook.html">Click here</a><br><br>

        <h3>Session data, cookies example:</h3>
        <a href="/ex3_sessiondata/ex3_cookies/GuestBook.html">Click here</a><br><br>

        <h3>Session data, session example:</h3>
        <a href="/ex3_sessiondata/ex4_session/GuestBook.html">Click here</a><br><br>

        <h3>File upload:</h3>
        <a href="/ex4_fileupload/FileUpload.html">Click here</a><br><br>

        <h3>Debugging servlets w/ context logging:</h3>
        <a href="/ContextLog">Click here</a><br><br>

        <h3>Debugging servlets log4j:</h3>
        <a href="/DebuggingServletsLog4J">Click here</a><br><br>

        <h3>Globalization detecting locale:</h3>
        <a href="/DetectLocale">Click here</a><br><br>

        <h3>Globalization language settings:</h3>
        <a href="/LanguageSettingsDemo">Click here</a><br><br>

        <h3>Globalization locale specific operations (currency and dates):</h3>
        <a href="/LocaleSpecificDemo">Click here</a><br><br>

        <h3>Globalization search:</h3>
        <a href="/GlobalizedServletSearch">Click here</a><br><br>

        <h3>Servlet initialization example:</h3>
        <a href="/ServletInitialization?name=Mindaugas">Click here to see servlet init in action</a><br><br>

        <h3>Asynchronous processing servlet example:</h3>
        <a href="/async">Click here to see async in action</a><br><br>
    </body>
</html>