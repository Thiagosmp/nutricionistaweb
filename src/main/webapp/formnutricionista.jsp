<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
<title>Nutricionista</title>
</head>
<body>
	<h1>Cadastro Nutricionista</h1>
	
	<form action="controllerNutricionista" method="post">
		<label>Nome</label>
		<input type="text" name="nome" />
		<br/>
		<label>Email</label>
		<input type="text" name="email" />
		<br/>
		<label>Sexo</label>
		<input type="text" name="sexo" />
		<br/>
		<label>Status</label>
		<input type="text" name="status" />
		<br/>
		<!--  <label>Status</label>
		<input type="radio" name="status" />
		<label for="status">Ativo</label>
		<input type="radio" name="status" />
		<label for="status">Inativo</label><br>
		<br/>-->
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>