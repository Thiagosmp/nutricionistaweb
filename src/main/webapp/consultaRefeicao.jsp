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
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Consultar Refeição</title>
</head>
<body>
	<%
	RefeicaoDao dao = new RefeicaoDao();
	List<Refeicao> refeicoes = dao.findAll(Refeicao.class);
	%>	
		<div class="contact1">
			<div class="container-contact1">
				<a  class="btn btn-primary" href="formrefeicao.jsp">Nova Refeição</a>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Café da manhã 1</th>
							<th>Café da manhã 2</th>
							<th>Almoço</th>
							<th>Café da tarde 1</th>
							<th>Café da tarde 2</th>
							<th>Jantar</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%
						for(Refeicao refeicao:refeicoes){
						%>
						<tr>
							<td><%= refeicao.getId()%></td>
							<td><%= refeicao.getCafe1()%></td>
							<td><%= refeicao.getCafe2()%></td>
							<td><%= refeicao.getAlmoco()%></td>
							<td><%= refeicao.getCafeT1()%></td>
							<td><%= refeicao.getCafeT2()%></td>
							<td><%= refeicao.getJantar()%></td>
							<td>
							<a class="btn btn-secondary btn-sm" 
							href="editrefeicao.jsp?id=<%= refeicao.getId()%>">Editar</a>
							<a class="btn btn-danger btn-sm" 
							href="<%= request.getContextPath()%>/controllerRefeicao?id=<%=refeicao.getId()%>">Excluir</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>	
</body>
</html>