package cf.mindaugas.ex8_debuggingservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


public class Log4jDemo extends HttpServlet {

	private Logger logger = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger = LogManager.getLogger(Log4jDemo.class);
		logger.info("Log Info: Entered the doGet Method for processing the request");
		
		response.setContentType("text/html");
		logger.info("Content Type has been set to text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>Log4j Demo </title></head>");
		out.println("<body>");
		logger.info("Log Info: Started the Document Creation");
		out.println("<p>Logger Name : " + logger.getName() + "</p>");
		String param = request.getParameter("param");
		if( param == null || param == "" || param.isEmpty()){
			out.println("<p>Error : Please Provide the Value for the Parameter </p>");
			logger.error("Error : Please Provide the Value for the Parameter");
		} else{
			out.println("<p>Page is requested by : " + param);
			logger.warn("Log Message : Page is requested by " + param);
		}
		out.println("</body>");
		out.println("</html>");
	}
}
