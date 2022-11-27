<%@page import="br.computacao.ProjetoNutriWeb.model.Refeicao"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.RefeicaoDao"%>
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
<title>Editar Refeição</title>
</head>
<body>
	<%
	long refeicaoid = Long.parseLong(request.getParameter("id"));
	RefeicaoDao dao = new RefeicaoDao();
	Refeicao conRefeicao = dao.findById(Refeicao.class, refeicaoid).get();
	%>
	
	<h1>Editar Refeição</h1>
	
	<form action="controllerRefeicao" method="post">
	<input type="hidden" name="refeicaoid" value="<%= refeicaoid %>" />
		
		<label>Café da manhã 1</label>
		<input type="text" name="cafe1" value="<%= conRefeicao.getCafe1() %>" />
		<br/>
		<label>Café da manhã 2</label>
		<input type="text" name="cafe2" value="<%= conRefeicao.getCafe2() %>" />
		<br/>
		<label>Almoço</label>
		<input type="text" name="almoco" value="<%= conRefeicao.getAlmoco() %>" />
		<br/>
		<label>Café da tarde 1</label>
		<input type="text" name=cafeT1 value="<%= conRefeicao.getCafeT1() %>" />
		<br/>
		<label>Café da tarde 2</label>
		<input type="text" name="cafeT2" value="<%= conRefeicao.getCafe2() %>" />
		<br/>
		<label>Jantar</label>
		<input type="text" name="jantar" value="<%= conRefeicao.getJantar() %>" />
		<br/>
		<input type="submit" value="Salvar"/>
	</form>
</body>
</html>