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
<title>Avaliação Física</title>
</head>
<body>
	<h1>Cadastro Avaliação Física</h1>
	
	<form action="controllerNutricionista" method="post">
		<label>Peso</label>
		<input type="text" name="peso" />
		<br/>
		<label>Altura</label>
		<input type="text" name="altura" />
		<br/>
		<label>Data Inicio</label>
		<input type="text" name="dataInicio" />
		<br/>
		<label>Nome Nutricionista</label>
		<input type="text" name="nomeNutri" />
		<br/>
		<label>Nome Paciente</label>
		<input type="text" name="nomePac" />
		<br/>
		<label>IMC</label>
		<input type="text" name="imc" />
		<br/>
		<label>Massa Gorda</label>
		<input type="text" name="massaG" />
		<br/>
		<label>Massa Magra</label>
		<input type="text" name="massaM" />
		<br/>
		<label>Peso Ideal</label>
		<input type="text" name="pesoIdeal" />
		<br/>
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>


