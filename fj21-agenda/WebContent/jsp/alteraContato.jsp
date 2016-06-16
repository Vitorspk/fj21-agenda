<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

<%@ page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.ParseException"%>

<!DOCTYPE html">
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
	<c:import url="/cabecalho.jsp" />

	<h1>Altera Contato</h1>
	<hr />
	<form class="form-signin" role="form" action="/fj21-agenda/mvc">
				<input type="hidden" name="logica" value="GravarContato">
				<input type="hidden" name="id" value="${contato.id}">
				<div class="form-group">
					<label for="nome">Nome:</label> <input type="text"
						class="form-control" id="nome" name="nome" value="${contato.nome}">
				</div>
				<div class="form-group">
					<label for="email">E-mail:</label> <input type="email"
						class="form-control" id="email" name="email"
						value="${contato.email}">
				</div>
				<div class="form-group">
					<label for="endereco">Endereço:</label> <input type="text"
						class="form-control" id="endereco" name="endereco"
						value="${contato.endereco}">
				</div>
				<div class="form-group">
					<label for="endereco">Data de nascimento:</label>
					<caelum:campoData id="dataNascimento" />
				</div>
				<button type="submit" class="btn btn-default">Alterar</button>
			</form>

	<c:import url="/rodape.jsp" />
</body>
</html>