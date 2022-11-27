<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>-->
<!DOCTYPE html>
<html>
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
			<!--<div class="contact1-pic js-tilt" data-tilt>
				<img src="./images/img-03.png" alt="IMG">
			</div>-->
			
			<div class="contact1-form-title" style="margin-left: 18rem; margin-bottom: 37rem; position: absolute;">
				<h3>Cadastrando Refeição</h3>
			</div>
			<form action="controllerRefeicao" method="post" class="contact1-form validate-form" style="margin-top: 3.5rem;">
                <div class="wrap-input1 validate-input">
					<textarea class="input1" type="text" name="cafe1" placeholder="Café da manhã 1"></textarea>
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<textarea class="input1" type="text" name="cafe2" placeholder="Café da manhã 2"></textarea>
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<textarea class="input1" type="text" name="almoco" placeholder="Almoço"></textarea>
					<span class="shadow-input1"></span>
				</div>
			</form>

			<form action="controllerRefeicao" method="post" class="contact1-form validate-form" style="margin-top: 3.5rem;">
				<div class="wrap-input1 validate-input">
					<textarea class="input1" type="text" name="cafeT1" placeholder="Café da tarde 1"></textarea>
					<span class="shadow-input1"></span>
				</div>
                <div class="wrap-input1 validate-input">
					<textarea class="input1" type="text" name="cafeT2" placeholder="Café da tarde 2"></textarea>
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input">
					<textarea class="input1" type="text" name="jantar" placeholder="Jantar"></textarea>
					<span class="shadow-input1"></span>
				</div>
			</form>

			<div style="margin-left: 40%; margin-top: 10px;">
				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Cadastrar refeição
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit" value="Salvar"></i>
						</span>
					</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

