<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.caelum.jdbc.dao.*"%>
<%@ page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<head>
<title>Bem vindo</title>
</head>
<c:import url="/cabecalho.jsp" />
	<h1>
		<%-- comentário em JSP aqui: nossa primeira página JSP --%>

		<%
			String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
		%>

		<%
			out.println(mensagem);
		%>

	</h1>
	<br />

	<%
		String desenvolvido = "Desenvolvido por (Vitor Schiavo)";
	%>
	<%=desenvolvido%>
	
	<br>
	<br>
	<br>
	<br>
	<body>
	Adicionar contatos:
	<br>
		<form action="jsp/adiciona-contato.jsp">
			Contato: <input type="text" name="contato"> <input type="submit">
		</form>
	</body>
	
	<br>
	<br>
	<br>
	<body>

		<form action="jsp/lista-contatos.jsp">
		Listar contatos: <input type="submit">
		</form>
	</body>
	
	<%
		System.out.println("Tudo foi executado!");
	%>	
	
	
<c:import url="/rodape.jsp" />
</body>
</html>