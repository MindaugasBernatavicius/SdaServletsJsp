package cf.mindaugas.exA_debuggingservlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ContextLog extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("param");
		ServletContext context = getServletContext();
		if( param == null || param == null || param.equals("")){
			context.log("No Message Received", new IllegalStateException("Missing Parameter"));
		} else{
			context.log("Visitor's Message : "  + param);
		}
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>Demo: Servlet Debugging using Message Logging </title></head>");
		out.println("<body>");
		context.log("Generating the Body for the Response");
		out.println("<h3>Message Logging Demo </h3>");
		out.println("<p>Message Received : "  + param + "</p>");
		context.log("Completed Generating the Response");
		out.println("</body>");
		out.println("</html>");
	}
}
