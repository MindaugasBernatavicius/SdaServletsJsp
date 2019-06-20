<%@ page import = "java.io.*,java.util.*" %>
<%
    // Get session creation time.
    Date createTime = new Date(session.getCreationTime());

    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    String title = "Welcome Back to my website";
    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
    String userIDKey = new String("userID");
    String userID = new String("ABCD");

    // Check if this is new comer on your Webpage.
    if (session.isNew()){
        title = "Welcome to my website";
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey,  visitCount);
    }

    // There is a bug here - if the page is accessed for the first time
    // from another page, the session is not new but it does not have the getAttribute
    // visitCountKey. Hence, when the page is accessed for the first time from another page
    // an exception is thrown. How do we fix this?
    // if (session.getAttribute(visitCountKey) != null) visitCount = (Integer)session.getAttribute(visitCountKey);
    // else session.setAttribute(visitCountKey,  visitCount);
    // other ways to solve something like this: have a global *.jsp
    // that initiates the session no matter which page the user accessed first
    // ... which is called the god object and is not recommended.
    // Also, we could move the checking for nullity to the if (session.isNew())
    // and make it look like: if (session.isNew() || session.getAttribute(visitCountKey) == null || session.getAttribute(visitCountKey))
    // and we should probably move all the initialization to the session .isNew() if().
    // TAKE HOME LESSON: do not rely only on session.isNew() when setting custom attributes!

    visitCount = (Integer)session.getAttribute(visitCountKey);
    visitCount = visitCount + 1;
    userID = (String)session.getAttribute(userIDKey);
    session.setAttribute(visitCountKey,  visitCount);
%>

<html>
   <head>
      <title>Session Tracking</title>
   </head>

   <body>
      <center>
         <h1>Session Tracking</h1>
         <p>Is session new?: <% out.print( session.isNew() ); %></p>
      </center>

      <table border = "1" align = "center">
         <tr bgcolor = "#949494">
            <th>Session info</th>
            <th>Value</th>
         </tr>
         <tr>
            <td>id</td>
            <td><% out.print( session.getId()); %></td>
         </tr>
         <tr>
            <td>Creation Time</td>
            <td><% out.print(createTime); %></td>
         </tr>
         <tr>
            <td>Time of Last Access</td>
            <td><% out.print(lastAccessTime); %></td>
         </tr>
         <tr>
            <td>User ID</td>
            <td><% out.print(userID); %></td>
         </tr>
         <tr>
            <td>Number of visits</td>
            <td><% out.print(visitCount); %></td>
         </tr>
      </table>
   </body>
</html>