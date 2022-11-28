<%@page import="br.computacao.ProjetoNutriWeb.model.Nutricionista"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.NutricionistaDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
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
	NutricionistaDao dao = new NutricionistaDao();
	List<Nutricionista> nutricionistas = dao.findAll(Nutricionista.class);
	%>	
	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<form class="contact1-form validate-form">
					<h3> Cadastro Nutricionista</h3>
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
							  <th>Status</th>
						      <th>&nbsp;</th>
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
								<div class="container-contact1-form-btn">
									<button class="contact1-form-btn">
										<span>
											Editar
											<i class="fa fa-long-arrow-right" aria-hidden="true" href="editnutricionista.jsp?id=<%= nutricionista.getId()%>">Editar"></i>
										</span>
									</button>
									<button>
										<span>
											Excluir
											<i class="fa fa-long-arrow-right" aria-hidden="true" href="<%= request.getContextPath()%>/controllerNutricionista?id=<%=nutricionista.getId()%>">Excluir></i>
										</span>
									</button>
								</div>
								</td>
							</tr>
							<%
							}
							%>
						</tbody>
						</table>
					</div>
				</div>
		</div>
	</div>
<tbody>
		
							