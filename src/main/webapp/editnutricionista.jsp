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
<title>Editar Nutricionista</title>
</head>
<body>
	<%
	long nutricionistaid = Long.parseLong(request.getParameter("id"));
	NutricionistaDao dao = new NutricionistaDao();
	Nutricionista conNutricionista = dao.findById(Nutricionista.class, nutricionistaid).get();
	%>	

	<h1>Editar Nutricionista</h1>
	
	<form action="controllerNutricionista" method="post">
	<input type="hidden" name="nutricionistaid" value="<%= nutricionistaid %>" />
		
		<label>Nome</label>
		<input type="text" name="nome" value="<%= conNutricionista.getNome() %>" />
		<br/>
		<label>Email</label>
		<input type="text" name="email" value="<%= conNutricionista.getEmail() %>" />
		<br/>
		<label>Sexo</label>
		<input type="text" name="sexo" value="<%= conNutricionista.getSexo() %>" />
		<br/>
		<label>Status</label>
		<input type="radio" name="status" value="Ativo" />
		<label for="status">Ativo</label>
		<input type="radio" name="status" value="Inativo" />
		<label for="status">Inativo</label>
		
		<br/>
		
		
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>