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
				<img src="./images/img-02.png" alt="IMG">
			</div>

			<form action="controllerPaciente" method="post" class="contact1-form validate-form">
                <div class="contact1-form-title">
                	<h3>Cadastrando Paciente</h3>
                </div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="nome" placeholder="Nome">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="email" placeholder="Email">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="idade" placeholder="Idade">
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<input class="input1" type="text" name="tel" placeholder="Telefone">
					<span class="shadow-input1"></span>
				</div>
				
				<div class="select-style-title" style="margin-top: -11px;">
					<label for="sexo">Selecione o Sexo:</label>
				</div>
				<div>
					<select id="sexo" name="sexo" class="select-style">
						<option  value="M">Masculino</option>
						<option  value="F">Feminino</option>
					</select>
				</div>

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Cadastre-se
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit" value="Salvar"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>