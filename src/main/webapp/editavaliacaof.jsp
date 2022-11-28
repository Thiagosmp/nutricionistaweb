<%@page import="br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao"%>
<%@page import="br.computacao.ProjetoNutriWeb.model.AvaliaFisica"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="./css/util.css">
	<link rel="stylesheet" type="text/css" href="./css/main.css">

</head>
<body>
    <%
	long avaliacaofid = Long.parseLong(request.getParameter("id"));
	AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
	AvaliaFisica conAvaliaFisica = dao.findById(AvaliaFisica.class, avaliacaofid).get();
	%>
    <div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="./images/img-04.jpg" alt="IMG">
			</div>

			<form action="controllerPaciente" method="post" class="contact1-form validate-form">
				<div class="contact1-form-title">
					<h3> Editando Avaliacão Física</h3>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="hidden" name="avaliacaofid" placeholder="<%= avaliacaofid %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="peso" placeholder="<%= conAvaliaFisica.getPeso() %>">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="altura" placeholder="<%= conAvaliaFisica.getAltura() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="dataInicio" placeholder="<%= conAvaliaFisica.getDataInicio() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="imc" placeholder="<%= conAvaliaFisica.getImc() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="massaG" placeholder="<%= conAvaliaFisica.getMassaG() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="massaM" placeholder="<%= conAvaliaFisica.getMassaM() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="pesoIdeal" placeholder="<%= conAvaliaFisica.getPesoIdeal() %>">
					<span class="shadow-input1"></span>
				</div>
				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Salvar
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit" value="Salvar"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>