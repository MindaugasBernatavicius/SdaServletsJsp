package cf.mindaugas.ex4_filters;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


public class AuthenticationFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("doFilter method is called in " + this.getClass().getName());
		
		String userName = request.getParameter("username");
		String passwd  = request.getParameter("passwd");
		
		String ipAddress = request.getRemoteAddr();
		
		if( userName.equals("psuser") && passwd.equals("psguest")){
			System.out.println("User logged in " + ipAddress + " at " + new Date().toString());
			chain.doFilter(request, response);
		}
		else{
			PrintWriter out = response.getWriter();
			out.println("<h3>Sorry, You are not authorized to access this resource. </h3>");
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("init method is called in " + this.getClass().getName());
	}
}
