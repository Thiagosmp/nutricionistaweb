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
	<link rel="stylesheet" type="text/css" href="./styles/util.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Editar Avaliação</title>
</head>
<body>
	<%
	long avaliacaofid = Long.parseLong(request.getParameter("id"));
	AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
	AvaliaFisica conAvaliaFisica = dao.findById(AvaliaFisica.class, avaliacaofid).get();
	%>
	<h1 style="text-align:center;">Editar Avaliação</h1>
	<div class="contact1">
		<div class="container-contact1">
			
			<form action="controlleravaliacaof" method="post" class="contact1-form validate-form">
			<input type="hidden" name="avaliacaofid" value="<%= conAvaliaFisica.getId() %>" />
				
				<div class="wrap-input1 validate-input">
					<label>Peso</label>
					<input class="input1" type="text" name="peso" value="<%= conAvaliaFisica.getPeso() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<label>Altura</label>
					<input class="input1" type="text" name="altura" value="<%= conAvaliaFisica.getAltura() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<label>Idade</label>
					<input class="input1" type="text" name="idade" value="<%= conAvaliaFisica.getIdade() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<label>Data Início</label>
					<input class="input1" type="date" name="dataInicio" value="<%= conAvaliaFisica.getDataInicio() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<label>IMC</label>
					<input class="input1" type="text" name="imc" value="<%= conAvaliaFisica.getImc() %>" />
				</div>
				<div class="wrap-input1 validate-input">
					<label>Massa Gorda</label>
					<input class="input1" type="text" name="massaG" value="<%= conAvaliaFisica.getMassaG() %>" />
					<span class="shadow-input1"></span>
				</div>	
				<div class="wrap-input1 validate-input">
					<label>Massa Magra</label>
					<input class="input1" type="text" name="massaM" value="<%= conAvaliaFisica.getMassaM() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<label>Peso Ideal</label>
					<input class="input1" type="text" name="pesoIdeal" value="<%= conAvaliaFisica.getPesoIdeal() %>" />
					<span class="shadow-input1"></span>
				</div>
					<br/>	
					<input class="btn btn-primary" type="submit" value="Salvar"/>
			</form>
		</div>
	</div>	
</body>
</html>