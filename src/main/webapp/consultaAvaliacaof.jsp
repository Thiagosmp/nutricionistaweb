<%@page import="br.computacao.ProjetoNutriWeb.model.AvaliaFisica"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao"%>
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
<title>Consultar Avaliação</title>
</head>
<body>
	<%
	AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
	List<AvaliaFisica> avaliacoesF = dao.findAll(AvaliaFisica.class);
	%>	
<div class="container">
	<a  class="btn btn-primary" href="formavaliacaof.jsp">Nova Avaliação Física</a>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Peso</th>
				<th>Altura</th>
				<th>Data Inicio</th>
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
				<td><%= avaliaFisica.getImc()%></td>
				<td><%= avaliaFisica.getMassaG()%></td>
				<td><%= avaliaFisica.getMassaM()%></td>
				<td><%= avaliaFisica.getPesoIdeal()%></td>
				<td>
				<a class="btn btn-secondary btn-sm" 
				href="editavaliacaof.jsp?id=<%= avaliaFisica.getId()%>">Editar</a>
				<a class="btn btn-danger btn-sm" 
				href="<%= request.getContextPath()%>/controlleravaliacaof?id=<%=avaliaFisica.getId()%>">Excluir</a>
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