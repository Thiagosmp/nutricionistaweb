<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
<title>Cadastro Paciente</title>
</head>
<body>
	<h1>Cadastro Paciente</h1>
	
	<form action="controllerPaciente" method="post">
		<label>Nome</label>
		<input type="text" name="nome" />
		<br/>
		<label>Email</label>
		<input type="text" name="email" />
		<br/>
		<label>Sexo</label>
		<input type="text" name="sexo" />
		<br/>
		<label>Idade</label>
		<input type="text" name="idade" />
		<br/>
		<label>Telefone</label>
		<input type="text" name="tel" />
		<br/>
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>