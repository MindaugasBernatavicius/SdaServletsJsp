package cf.mindaugas.annotations_13;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(
    urlPatterns = {"/QuickServlet"}
    // urlPatterns = {"*.dont", "*.do"}
//     name="SimpleServlet"
//     // initParams = {
//     //     @WebInitParam(
//     //         name = "ProductName",
//     //         value = "Welcome Application From Annotation"
//     //     )
//     // }
)
public class ServletInitialization extends HttpServlet {
    String appName = "My Application";
    String connStr;

    @Override
    public void init() throws ServletException {
        appName = getInitParameter("ProductName");
        connStr = getInitParameter("connstr");
        // appName = getServletContext().getInitParameter("ProductName");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        if(name != null) {
            resp.setContentType("text/xml");
            resp.getWriter().printf("<application>" +
                "<name>Hello %s</name>" +
                "<product>%s</product>" +
                "<connstr>%s</connstr>" +
                "</application>", name, appName, connStr);
        } else {
            resp.getWriter().write("Please enter a name");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        if(name != null && name != ""){
            resp.getWriter().printf("Hello %s", name);
        } else {
            resp.sendRedirect("index.jsp");
        }
    }
}