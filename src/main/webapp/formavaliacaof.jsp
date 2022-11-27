<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
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

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="./images/img-04.png" alt="IMG">
			</div>

			<form action="controlleravaliacaof" method="post" class="contact1-form validate-form">
                <h3> Cadastro Avaliação</h3>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="peso" placeholder="Peso">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="altura" placeholder="Altura">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="dataInicio" placeholder="Data de Inicio">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="nomeNutri" placeholder="Nome nutricionista">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="nomePac" placeholder="Nome paciente">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="imc" placeholder="IMC">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="massaG" placeholder="Massa gorda">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="massaM" placeholder="Massa magra">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="pesoIdeal" placeholder="Peso ideal">
					<span class="shadow-input1"></span>
				</div>



				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Cadastrar Avaliação
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit" value="Salvar"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>

