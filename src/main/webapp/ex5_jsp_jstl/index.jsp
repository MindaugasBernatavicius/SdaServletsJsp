<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>JSTL Examples</title>
    </head>

   <body>
        <!-- 0. Core tags -->
        <!-- set and if -->
        <c:set var = "salary" scope = "session" value = "${2000*2}"/>
        <c:if test = "${salary > 2000}">
            <p>My salary is:  <c:out value = "${salary}"/><p>
        </c:if>

        <!-- forEach -->
        <c:forEach var = "i" begin = "1" end = "5">
            Item <c:out value = "${i}"/><p>
        </c:forEach>

        <!-- forToken -->
        <c:forTokens items = "Zara,nuha,roshy" delims = "," var = "name">
            <p><c:out value = "${name}"/></p>
        </c:forTokens>

        <!-- manipulating beans -->
        <jsp:useBean id="tb" class="cf.mindaugas.model.TestBean" />
        <c:forTokens items = "${tb.message}" delims = " " var = "substr">
            <p><c:out value = "${substr}"/></p>
        </c:forTokens>

        <!-- looping with a counter variable on bean property (collection) -->
        <c:forEach begin="0" items="${tb.someCollection}" var="item" varStatus="counter">
            Item ${counter.index} ${item}<p>
        </c:forEach>

        <!-- 1. Formatting tags -->
   </body>
</html>