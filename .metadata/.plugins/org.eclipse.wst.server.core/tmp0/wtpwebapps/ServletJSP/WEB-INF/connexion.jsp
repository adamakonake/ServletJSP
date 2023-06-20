<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Connexion</title>
		<link type="text/css" rel="stylesheet" href="CSS/connexion.css">
	</head>
	<body>
		<main>
			
			<form action="connexion" method="post">
			<fieldset>
				<legend>Connexion</legend>
				<label for="pseudo">Pseudo</label>
				<input type="text" name="pseudo" value="<c:out value="${user.pseudo}" />" ><br />
				<span class="erreur">${error['email']}</span><br />
				<label for="motdepasse">Mot de passe</label>
				<input type="password" name="motdepasse" value="<c:out value="${user.motDePasse}" />" required><br />
				<input class="hid" type="text" name="path" value="connexion">
				<span class="erreur">${error['confirme']}</span><br />
				<input type="submit" value="Inscription" class="sansLabel" /><br />
			</fieldset>
		</form>
		
		<p class="conec" style="text-align:center">Si vous n'avez un compte <a href="/ServletJSP">Inscrivez-vous</a></p>
			
		</main>
	</body>
</html>