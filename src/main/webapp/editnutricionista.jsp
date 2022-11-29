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
	<link rel="stylesheet" type="text/css" href="./styles/util.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Editar Nutricionista</title>
</head>
<body>
	<%
	long nutricionistaid = Long.parseLong(request.getParameter("id"));
	NutricionistaDao dao = new NutricionistaDao();
	Nutricionista conNutricionista = dao.findById(Nutricionista.class, nutricionistaid).get();
	%>	

	<h1 style="text-align:center;">Editar Nutricionista</h1>
	<div class="contact1">
		<div class="container-contact1">
	
			<form action="controllerNutricionista" method="post" class="contact1-form validate-form">
			<input type="hidden" name="nutricionistaid" value="<%= nutricionistaid %>" />
				
				<div class="wrap-input1 validate-input">
					<label>Nome</label>
					<input class="input1" type="text" name="nome" value="<%= conNutricionista.getNome() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<label>Email</label>
					<input class="input1" type="text" name="email" value="<%= conNutricionista.getEmail() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="select-style-title" style="margin-top: -11px;">
					<label for="sexo">Selecione o Sexo:</label>
				</div>
				<div>
					<select id="sexo" name="sexo" class="select-style">
						<option  value="M">Masculino</option>
						<option  value="F">Feminino</option>
					</select>
				</div>
				<div class="select-style-title" style="margin-top: -11px;">
					<label for="status">Selecione o Status:</label>
				</div>
				<div>
					<select id="status" name="status" class="select-style">
						<option  value="Ativo">Ativo</option>
						<option  value="Inativo">Inativo</option>
					</select>
				</div>
				<input class="btn btn-primary" type="submit" value="Salvar"/>
			</form>
		</div>
	</div>
</body>
</html>