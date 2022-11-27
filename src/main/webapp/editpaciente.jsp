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
<title>Editar Paciente</title>
</head>
<body>
	<%
	long pacienteid = Long.parseLong(request.getParameter("id"));
	PacienteDao dao = new PacienteDao();
	Paciente conPaciente = dao.findById(Paciente.class, pacienteid).get();
	%>	
	
	<h1>Editar Paciente</h1>
	
	<form action="controllerPaciente" method="post">
	<input type="hidden" name="pacienteid" value="<%= pacienteid %>" />
		
		<label>Nome</label>
		<input type="text" name="nome" value="<%= conPaciente.getNome() %>" />
		<br/>
		<label>Email</label>
		<input type="text" name="email" value="<%= conPaciente.getEmail() %>" />
		<br/>
		<label>Sexo</label>
		<input type="text" name="sexo" value="<%= conPaciente.getSexo() %>" />
		<br/>
		<label>Idade</label>
		<input type="text" name="idade" value="<%= conPaciente.getIdade() %>" />
		<br/>
		<label>Telefone</label>
		<input type="text" name="tel" value="<%= conPaciente.getTel() %>" />
		<br/>
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>