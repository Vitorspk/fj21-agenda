package br.com.caelum.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		  name = "OiServlet3",
		  urlPatterns = {"/oi"},
		  initParams = {
		    @WebInitParam(name = "param1", value = "value1"),
		    @WebInitParam(name = "param2", value = "value2")}
		  )
public class OiServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest request, 
		    HttpServletResponse response) throws ServletException, IOException {

		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		    
		  out.println("<h2>Exemplo com InitParam Servlet</h2>");
		    
		  ServletConfig config = getServletConfig();
		    
		  String parametro1= config.getInitParameter("param1");
		  out.println("Valor do parâmetro 1: " + parametro1);
		    
		  String parametro2 = config.getInitParameter("param2");
		  out.println("<br>Valor do parâmetro 1: " + parametro2);
		    
		  out.close();

	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Primeira Servlet</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Oi mundo Servlet!</h1>");
	    out.println("</body>");
	    out.println("</html>");
	}

}
