<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
		<link rel="stylesheet" href="./styles/indexStyle.css">
	</head>
	<body>
		<div>
            <div class="borderCard">
                <div class="card">
                    <h3 style="font-size: 30px;"><span style="color: #44b16e;">Nutri</span>Program</h3>
                    <form class="loginContent" action="controllerNutricionista" method="post">
                        <input type="email" name="email" placeholder="E-mail" />
                        <input type="password" name="password" placeholder="Senha" />
                        <div style="padding-left: 1.4rem">
	                        <button class="button" name="method" value="login">LOGIN</button>
                        </div>
                    </form>
                </div>
            </div>
		</div>
	</body>
</html>