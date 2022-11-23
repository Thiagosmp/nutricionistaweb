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
<title>Refeição</title>
</head>
<body>
	<h1>Cadastro Refeição</h1>
	
	<form action="controllerRefeicao" method="post">
		<label>Café da manhã 1</label>
		<input type="text" name="cafe1" />
		<br/>
		<label>Café da manhã 2</label>
		<input type="text" name="cafe2" />
		<br/>
		<label>Almoço</label>
		<input type="text" name="almoco" />
		<br/>
		<label>Café da tarde 1</label>
		<input type="text" name="cafeT1" />
		<br/>
		<label>Café da tarde 2</label>
		<input type="text" name="cafeT2" />
		<br/>
		<label>Jantar</label>
		<input type="text" name="jantar" />
		<br/>
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>