<%@page import="br.computacao.ProjetoNutriWeb.model.Nutricionista"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.NutricionistaDao"%>
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
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Consultar Nutricionista</title>
</head>
<body>
	<%
	NutricionistaDao dao = new NutricionistaDao();
	List<Nutricionista> nutricionistas = dao.findAll(Nutricionista.class);
	%>	
		<div class="contact1">
			<div class="container-contact1">
				<a  class="btn btn-primary" href="formnutricionista.jsp">Cadastrar Nutricionista</a>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>Email</th>
							<th>Sexo</th>
							<th>Status</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%
						for(Nutricionista nutricionista:nutricionistas){
						%>
						<tr>
							<td><%= nutricionista.getId()%></td>
							<td><%= nutricionista.getNome()%></td>
							<td><%= nutricionista.getEmail()%></td>
							<td><%= nutricionista.getSexo()%></td>
							<td><%= nutricionista.getStatus()%></td>
							<td>
							<a class="btn btn-secondary btn-sm" 
							href="editnutricionista.jsp?id=<%= nutricionista.getId()%>">Editar</a>
							<a class="btn btn-danger btn-sm" 
							href="<%= request.getContextPath()%>/controllerNutricionista?id=<%=nutricionista.getId()%>">Excluir</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
</body>
</html>