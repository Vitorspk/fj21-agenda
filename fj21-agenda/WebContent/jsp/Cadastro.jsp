<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html">
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<c:import url="/cabecalho.jsp" />
	<div class="container">
			<form class="form-signin" role="form" action="/fj21-agenda/mvc">
				<input type="hidden" name="logica" value="GravaContato">
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
				<button type="submit" class="btn btn-default">Gravar</button>
				<button type="reset" class="btn btn-default">Limpar campos</button>
			</form>
		</div>	
	
	<c:import url="/rodape.jsp" />
</body>
</html>