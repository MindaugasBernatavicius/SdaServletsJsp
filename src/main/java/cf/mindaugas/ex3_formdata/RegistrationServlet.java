package cf.mindaugas.ex3_formdata;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class RegistrationServlet extends HttpServlet {

    // This method allows a Servlet to handle the get request.
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String username = req.getParameter("userName");
        String passwd = req.getParameter("passwd");
        String gender = req.getParameter("gender");
        String[] hobbies = req.getParameterValues("hobbies");
        String country = req.getParameter("country");
        String[] languages= req.getParameterValues("languages");


        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<div>");
        out.println("<p>User name : " + username + "</p>");
        out.println("<p>Password : " + passwd + "</p>");
        out.println("<p>Sex : " + gender + "</p>");
        out.println("<p>Hobbies : <br>" );
        for (int i = 0; i < hobbies.length; i++) {
            out.println(hobbies[i] + "<br>");
        }
        out.println("</p>");
        out.println("<p>Country : "  + country + "</p>");
        out.println("<p>Languages Known : <br>");
        for (int i = 0; i < languages.length; i++) {
            out.println(languages[i] + "<br>");
        }
        out.println("</p>");
    }

    // This method allows a Servlet to handle the post request.
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        doGet(req, res);
    }

    // This method allows a Servlet to handle the put request.
    protected void doPut(HttpServletRequest req, HttpServletResponse res) throws IOException {

    }

    // This method allows a Servlet to handle the trace request.
    protected void doTrace(HttpServletRequest req, HttpServletResponse res) throws IOException{

    }

    // This method allows a Servlet to handle the HTTP head request.
    protected void doHead(HttpServletRequest req, HttpServletResponse res) throws IOException {

    }

    // This method allows a Servlet to handle the delete request.
    protected void doDelete(HttpServletRequest req, HttpServletResponse res) throws IOException{

    }

    // This method allows a Servlet to handle the options request.
    protected void doOptions(HttpServletRequest req, HttpServletResponse res) throws IOException{

    }
}
