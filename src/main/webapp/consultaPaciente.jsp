<%@page import="br.computacao.ProjetoNutriWeb.model.Paciente"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.PacienteDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
<title>Consultar Paciente</title>
</head>
<body>
	<%
	PacienteDao dao = new PacienteDao();
	List<Paciente> pacientes = dao.findAll(Paciente.class);
	%>	
<div class="container">
	<a  class="btn btn-primary" href="formpaciente.jsp">Cadastrar Paciente</a>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Sexo</th>
				<th>Idade</th>
				<th>Telefone</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
			for(Paciente paciente:pacientes){
			%>
			<tr>
				<td><%= paciente.getId()%></td>
				<td><%= paciente.getNome()%></td>
				<td><%= paciente.getEmail()%></td>
				<td><%= paciente.getSexo()%></td>
				<td><%= paciente.getIdade()%></td>
				<td><%= paciente.getTel()%></td>
				<td>
				<a class="btn btn-secondary btn-sm" 
				href="editpaciente.jsp?id=<%= paciente.getId()%>">Editar</a>
				<a class="btn btn-danger btn-sm" 
				href="<%= request.getContextPath()%>/controllerPaciente?id=<%=paciente.getId()%>">Excluir</a>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>
</body>
</html>