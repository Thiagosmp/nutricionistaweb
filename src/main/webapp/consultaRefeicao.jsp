<%@page import="br.computacao.ProjetoNutriWeb.model.Refeicao"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.RefeicaoDao"%>
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
	RefeicaoDao dao = new RefeicaoDao();
	List<Refeicao> refeicoes = dao.findAll(Refeicao.class);
	%>	
		<div class="contact1">
			<div class="container-contact1">
				<div class="contact1-pic js-tilt" data-tilt>
					<form class="contact1-form validate-form">
						<h3> Consultar Listas de Refeições</h3>
				</div>
					<div class="col-md-12">
						<div class="table-wrap">
							<table class="table">
							  <thead class="thead-dark">
							    <tr>
								<th>ID</th>
								<th>Café da manhã 1</th>
								<th>Café da manhã 2</th>
								<th>Almoço</th>
								<th>Café da tarde 1</th>
								<th>Café da tarde 2</th>
								<th>Jantar</th>
								<th></th>
								</tr>
							</thead>
						<tbody>
						<%
						for(Refeicao refeicao:refeicoes){
						%>
						<tr>
							<td><%= refeicao.getId()%></td>
							<td><%= refeicao.getCafe1()%></td>
							<td><%= refeicao.getCafe2()%></td>
							<td><%= refeicao.getAlmoco()%></td>
							<td><%= refeicao.getCafeT1()%></td>
							<td><%= refeicao.getCafeT2()%></td>
							<td><%= refeicao.getJantar()%></td>
							<td>
							<div class="container-contact1-form-btn">
									<button class="contact1-form-btn">
										<span>
											Editar
											<i class="fa fa-long-arrow-right" aria-hidden="true" href="editrefeicao.jsp?id=<%= refeicao.getId()%>">Editar"></i>
										</span>
									</button>
									<button>
										<span>
											Excluir
											<i class="fa fa-long-arrow-right" aria-hidden="true" href="<%= request.getContextPath()%>/controllerRefeicao?id=<%=refeicao.getId()%>">Excluir></i>
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
<			</div>
	</body>
</html>