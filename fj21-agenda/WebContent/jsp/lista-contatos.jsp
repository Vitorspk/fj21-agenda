<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="br.com.caelum.jdbc.dao.ContatoDAO" %>
<%@ page import="br.com.caelum.jdbc.modelo.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>

<!DOCTYPE html>
<html>
<body>
	<table border="1">
		<caption>Contatos Listados</caption>
		<thead>
		</thead>
		<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDAO" />

		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				
			<tbody>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Email</th>
					<th>Edereco</th>
					<th>Data Nascimento</th>
					<th>Remover</th>
					<th>Alterar</th>
				</tr>
				<tr>
					<td>${contato.id}</td>
					<td>${contato.nome}</td>
					<td><c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>E-mail não informado</c:otherwise>
						</c:choose></td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}"
							pattern="dd/MM/yyyy" /></td>
					<td><a href="mvc?logica=RemoveContato&id=${contato.getId()}">Remover</a></td>
					<td><a href="mvc?logica=AlteraContato&id=${contato.getId()}">Alterar</a></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
</body>
</html>