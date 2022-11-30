<%@page import="br.computacao.ProjetoNutriWeb.model.Paciente"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.PacienteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./styles/util.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Editar Paciente</title>
</head>
<body>
	<%
	long pacienteid = Long.parseLong(request.getParameter("id"));
	PacienteDao dao = new PacienteDao();
	Paciente conPaciente = dao.findById(Paciente.class, pacienteid).get();
	%>	
	
	<h1 style="text-align:center;">Editar Paciente</h1>
	<div class="contact1">
		<div class="container-contact1">
			<form action="controllerPaciente" method="post" class="contact1-form validate-form">
			<input type="hidden" name="pacienteid" value="<%= pacienteid %>" />
				
				<div class="wrap-input1 validate-input">
					<input placeholder="Nome" class="input1" type="text" name="nome" value="<%= conPaciente.getNome() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="E-mail" class="input1" type="text" name="email" value="<%= conPaciente.getEmail() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="select-style-title" style="margin-top: -11px;">
					<label for="sexo">Selecione o Sexo:</label>
				</div>
				<div>
					<select id="sexo" name="sexo" class="select-style">
						<option  value="M">Masculino</option>
						<option  value="F">Feminino</option>
					</select>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Idade" class="input1" type="text" name="idade" value="<%= conPaciente.getIdade() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Telefone" class="input1" type="text" name="tel" value="<%= conPaciente.getTel() %>" />
					<span class="shadow-input1"></span>
				</div>
				
				<input class="btn btn-primary" type="submit" value="Salvar"/>
			</form>
		</div>
	</div>
</body>
</html>