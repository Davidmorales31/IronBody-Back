<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <link rel="shorcut - icon" href="../multimedia/img/icono.ico">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="/css/inicio-sesion.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Concert+One&family=Dekko&family=Dosis:wght@200&family=Edu+NSW+ACT+Foundation:wght@400;500&family=Exo:ital,wght@1,100;1,200&family=Patrick+Hand&family=Pixelify+Sans&family=Red+Hat+Display:wght@300&family=Source+Sans+3:wght@200;300&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <%@ include file="común/header.jsp" %>
    </header>
    <main>
	<div class="login-container">
		<h1>Register</h1>
		<form method="post" action="/register">
			<input type="text" name="username" placeholder="Usuario" required>
			<input type="password" name="password" placeholder="Contraseña" required>
			<input type="submit" value="Registrate">
		</form>
	</div>
    </main>
    <footer>
        <%@ include file="común/footer.jsp" %>
    </footer>
</body>
</html>