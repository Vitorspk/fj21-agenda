<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.caelum.jdbc.dao.*" %>
<%@ page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@ page import="java.util.List" %>
<%@ page import= "java.text.SimpleDateFormat"%>

        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<table>
		<%
		Contato contato = new Contato();			
		contato.setId(1);
		ContatoDAO dao = new ContatoDAO();
		dao.remove(contato);
		System.out.println("Contato removido!");
		%>
		${param.nome}
	</table>
</body>
</html>