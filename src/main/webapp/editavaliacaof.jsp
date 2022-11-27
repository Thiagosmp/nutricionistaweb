<%@page import="br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao"%>
<%@page import="br.computacao.ProjetoNutriWeb.model.AvaliaFisica"%>
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
<title>Editar Avaliação</title>
</head>
<body>
	<%
	long avaliacaofid = Long.parseLong(request.getParameter("id"));
	AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
	AvaliaFisica conAvaliaFisica = dao.findById(AvaliaFisica.class, avaliacaofid).get();
	%>
	
	<h1>Editar Avaliação</h1>
	<form action="controlleravaliacaof" method="post">
	<input type="hidden" name="avaliacaofid" value="<%= avaliacaofid %>" />
		
		<label>Peso</label>
		<input type="text" name="peso" value="<%= conAvaliaFisica.getPeso() %>" />
		<br/>
		<label>Altura</label>
		<input type="text" name="altura" value="<%= conAvaliaFisica.getAltura() %>" />
		<br/>
		<label>Data Inicio</label>
		<input type="text" name="dataInicio" value="<%= conAvaliaFisica.getDataInicio() %>" />
		<br/>
		<label>Nome Paciente</label>
		<input type="text" name="nomePac" value="<%= conAvaliaFisica.getNomePac() %>" />
		<br/>
		<label>Nome Nutricionista</label>
		<input type="text" name="nomeNutri" value="<%= conAvaliaFisica.getNomeNutri() %>" />
		<br/>
		<label>IMC</label>
		<input type="text" name="imc" value="<%= conAvaliaFisica.getImc() %>" />
		<br/>	
		<label>Massa Gorda</label>
		<input type="text" name="massaG" value="<%= conAvaliaFisica.getMassaG() %>" />
		<br/>
		<label>Massa Magra</label>
		<input type="text" name="massaM" value="<%= conAvaliaFisica.getMassaM() %>" />
		<br/>
		<label>Peso Ideal</label>
		<input type="text" name="pesoIdeal" value="<%= conAvaliaFisica.getPesoIdeal() %>" />
		<br/>	
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>