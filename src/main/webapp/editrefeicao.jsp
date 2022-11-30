<%@page import="br.computacao.ProjetoNutriWeb.model.Paciente"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.PacienteDao"%>
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
	<link rel="stylesheet" type="text/css" href="./styles/util.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Editar Refeição</title>
</head>
<body>
	<%
	PacienteDao pacienteDao = new PacienteDao();
	List<Paciente> pacientes = pacienteDao.findAll(Paciente.class);
	long refeicaoid = Long.parseLong(request.getParameter("id"));
	RefeicaoDao dao = new RefeicaoDao();
	Refeicao conRefeicao = dao.findById(Refeicao.class, refeicaoid).get();
	%>
	
	<h1 style="text-align:center;">Editar Refeição</h1>
	
	<div class="contact1">
		<div class="container-contact1">
			<form action="controllerRefeicao" method="post" class="contact1-form validate-form">
			<input type="hidden" name="refeicaoid" value="<%= refeicaoid %>" />
				
				<div class="wrap-input1 validate-input">
					<input placeholder="Café da manhã" class="input1" type="text" name="cafe1" value="<%= conRefeicao.getCafe1() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Lanche da manhã" class="input1" type="text" name="cafe2" value="<%= conRefeicao.getCafe2() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Almoço" class="input1" type="text" name="almoco" value="<%= conRefeicao.getAlmoco() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Café da Tarde" class="input1" type="text" name=cafeT1 value="<%= conRefeicao.getCafeT1() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Lanche da Tarde" class="input1" type="text" name="cafeT2" value="<%= conRefeicao.getCafe2() %>" />
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input placeholder="Jantar" class="input1" type="text" name="jantar" value="<%= conRefeicao.getJantar() %>" />
					<span class="shadow-input1"></span>
				</div>	
				<div>
					<select name="paciente" class="select-style" >
						<option value="" disabled selected>Selecione</option>
						<%
						for(Paciente paciente:pacientes){
						%>
						<option value=<%=paciente.getId()%>><%=paciente.getNome() %></option>
						<%}%>
					</select>
				</div>
					<input class="btn btn-primary" type="submit" value="Salvar"/>
			</form>
		</div>
	</div>
</body>
</html>