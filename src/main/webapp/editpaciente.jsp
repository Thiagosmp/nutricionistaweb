<%@page import="br.computacao.ProjetoNutriWeb.model.Paciente"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.PacienteDao"%>
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
	long pacienteid = Long.parseLong(request.getParameter("id"));
	PacienteDao dao = new PacienteDao();
	Paciente conPaciente = dao.findById(Paciente.class, pacienteid).get();
	%>	
    <div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="./images/img-02.jpg" alt="IMG">
			</div>

			<form action="controllerPaciente" method="post" class="contact1-form validate-form">
				<div class="contact1-form-title">
					<h3> Editando Paciente</h3>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="hidden" name="pacienteid" placeholder="<%= pacienteid %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="nome" placeholder="<%= conPaciente.getNome() %>">
					<span class="shadow-input1"></span>
				</div>
				
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="email" placeholder="<%= conPaciente.getEmail() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="idade" placeholder="<%= conPaciente.getIdade() %>">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="tel" placeholder="<%= conPaciente.getTel() %>">
					<span class="shadow-input1"></span>
				</div>

				<div class="select-style-title" style="margin-top: -11px;">
					<label for="sexo">Selecione o Sexo:</label>
				</div>
				<div>
					<select id="sexo" class="select-style">
						<option value="M">Masculino</option>
						<option value="F">Feminino</option>
					</select>
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