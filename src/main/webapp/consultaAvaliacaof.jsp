<%@page import="br.computacao.ProjetoNutriWeb.model.AvaliaFisica"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao"%>
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
	AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
	List<AvaliaFisica> avaliacoesF = dao.findAll(AvaliaFisica.class);
	%>	
<div class="contact1">
			<div class="container-contact1">
				<div class="contact1-pic js-tilt" data-tilt>
					<form class="contact1-form validate-form">
						<h3> Consultar Avaliações Físicas</h3>
				</div>
					<div class="col-md-12">
						<div class="table-wrap">
							<table class="table">
							  <thead class="thead-dark">
							    <tr>
									<th>ID</th>
									<th>Peso</th>
									<th>Altura</th>
									<th>Data Inicio</th>
									<th>Nome Nutricionista</th>
									<th>Nome Paciente</th>
									<th>IMC</th>
									<th>Massa G</th>
									<th>Massa M</th>
									<th>Peso Ideal</th>
									<th></th>
								</tr>
							   </thead>
						<tbody>
						<%
						for(AvaliaFisica avaliaFisica:avaliacoesF){
						%>
			<tr>
				<td><%= avaliaFisica.getId()%></td>
				<td><%= avaliaFisica.getPeso()%></td>
				<td><%= avaliaFisica.getAltura()%></td>
				<td><%= avaliaFisica.getDataInicio()%></td>
				<td><%= avaliaFisica.getNomeNutri()%></td>
				<td><%= avaliaFisica.getNomePac()%></td>
				<td><%= avaliaFisica.getImc()%></td>
				<td><%= avaliaFisica.getMassaG()%></td>
				<td><%= avaliaFisica.getMassaM()%></td>
				<td><%= avaliaFisica.getPesoIdeal()%></td>
				<td>
					<div class="container-contact1-form-btn">
							<button class="contact1-form-btn">
								<span>
									Editar
										<i class="fa fa-long-arrow-right" aria-hidden="true" href="editavaliacaof.jsp?id=<%= avaliaFisica.getId()%>">Editar"></i>
								</span>
							</button>
							<button>
								 <span>
									Excluir
										<i class="fa fa-long-arrow-right" aria-hidden="true" href="<%= request.getContextPath()%>/controlleravaliacaof?id=<%=avaliaFisica.getId()%>">Excluir></i>
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
</body>
</html>