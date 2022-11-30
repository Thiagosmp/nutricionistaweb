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
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Consultar Paciente</title>
</head>
<body>
	<%
	PacienteDao dao = new PacienteDao();
	List<Paciente> pacientes = dao.findAll(Paciente.class);
	%>	
		<div class="contact1">
			<div class="container-contact1">
				<div class="contact1-form-title">
	                <h3>Consulta Paciente</h3>
	            </div>
				<table class="table table-bordered">
					<thead>
						<tr>
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
							<td><%= paciente.getNome()%></td>
							<td><%= paciente.getEmail()%></td>
							<td><%= paciente.getSexo()%></td>
							<td><%= paciente.getIdade()%></td>
							<td><%= paciente.getTel()%></td>
							<td>
							<a class="btn btn-secondary btn-sm" style="font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"
							href="editpaciente.jsp?id=<%= paciente.getId()%>">Editar</a>
							<a class="btn btn-danger btn-sm" style="font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"
							href="<%= request.getContextPath()%>/controllerPaciente?id=<%=paciente.getId()%>">Excluir</a>
							<a class="btn btn-secondary btn-sm" style="font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"
							href="consultaAvaliacaof.jsp?id=<%= paciente.getId()%>">Avaliação</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				<a class="container-contact1-form-btn" href="formpaciente.jsp" style="text-decoration: none;">
					<button class="contact1-form-btn">
						<span>
							Cadastrar Paciente
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit" value="Salvar"></i>
						</span>
					</button>
				</a>
			</div>
		</div>
</body>
</html>