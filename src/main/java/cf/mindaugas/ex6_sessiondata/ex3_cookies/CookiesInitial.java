package cf.mindaugas.ex6_sessiondata.ex3_cookies;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class CookiesInitial extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String guestName = request.getParameter("guestName");

		Cookie userData[] = request.getCookies();
		for (Cookie cookie : userData){
			System.out.println("Cookie name: " + cookie.getName());
			System.out.println("Cookie value: " + cookie.getValue());
		}

		Cookie guestData = new Cookie("guestName",guestName);
		//guestData.setMaxAge(1800);
		response.addCookie(guestData);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Greetings </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>Welcome " + guestName + "</p>");
		out.println("<form name='frm' action='CookiesSubsequent' method='post'>");
		out.println("<p>Enter Email Id : </p>");
		out.println("<p><input type='email' name='email' /> </p>");
		out.println("<p><input type='submit' value='Preview data' name='btnPreview' /> </p>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}
}
