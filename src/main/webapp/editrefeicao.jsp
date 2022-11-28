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
	long refeicaoid = Long.parseLong(request.getParameter("id"));
	RefeicaoDao dao = new RefeicaoDao();
	Refeicao conRefeicao = dao.findById(Refeicao.class, refeicaoid).get();
	%>
    <div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="./images/img-04.jpg" alt="IMG">
			</div>

			<form action="controllerRefeicao" method="post" class="contact1-form validate-form">
				<div class="contact1-form-title">
					<h3> Editando Refeição</h3>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="hidden" name="refeicaoid" placeholder="<%= refeicaoid %>">
					<span class="shadow-input1"></span>
				</div>
				
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="cafe1" placeholder="<%= conRefeicao.getCafe1() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="cafe2" placeholder="<%= conRefeicao.getCafe2() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="almoco" placeholder="<%= conRefeicao.getAlmoco() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="cafeT1" placeholder="<%= conRefeicao.getCafeT1() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="cafeT2" placeholder="<%= conRefeicao.getCafe2() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="jantar" placeholder="<%= conRefeicao.getJantar() %>">
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