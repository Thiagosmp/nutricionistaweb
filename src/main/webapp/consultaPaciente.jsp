<%@page import="br.computacao.ProjetoNutriWeb.model.Paciente"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.PacienteDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="./styles/util.css">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">

</head>
<body>
	<%
	PacienteDao dao = new PacienteDao();
	List<Paciente> pacientes = dao.findAll(Paciente.class);
	%>	
	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<form class="contact1-form validate-form">
					<h3> Consultar Pacientes</h3>
			</div>
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-dark">
						    <tr>
						      <th>ID  </th>
						      <th>nome</th>
						      <th>Email</th>
						      <th>Sexo</th>
							  <th>Idade</th>
							  <th>Telefone</th>
						      <th>&nbsp;</th>
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
				<div class="container-contact1-form-btn">
									<button class="contact1-form-btn">
										<span>
											Editar
											<i class="fa fa-long-arrow-right" aria-hidden="true" href="editpaciente.jsp?id=<%= paciente.getId()%>"Editar"></i>
										</span>
									</button>
									<button>
										<span>
											Excluir
											<i class="fa fa-long-arrow-right" aria-hidden="true" href="<%= request.getContextPath()%>/controllerPaciente?id=<%=paciente.getId()%>">Excluir></i>
										</span>
									</button>
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