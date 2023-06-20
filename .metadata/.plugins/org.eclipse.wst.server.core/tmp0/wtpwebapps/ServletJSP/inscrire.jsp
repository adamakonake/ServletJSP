<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Inscription</title>
	<link type="text/css" rel="stylesheet" href="CSS/inscription.css">
</head>
<body>
	<main>
		
		<form action="inscription" method="post">
			<fieldset>
				<legend>Iscription</legend>
				<label for="nom">Nom</label>
				<input type="text" name="nom" value='<c:out value="${user.nom}" />' required><br />
				<label for="prenom">Prenom</label>
				<input type="text" name="prenom" value='<c:out value="${user.prenom}" />' required><br />
				<label for="pseudo">Pseudo</label>
				<input type="text" name="pseudo" value='<c:out value="${user.pseudo}" />' required ><br />
				<label for="email">Email</label>
				<input type="text" name="email" value='<c:out value="${user.mail}" />' required><br />
				<label for="motdepasse">Mot de passe</label>
				<input type="password" name="motdepasse" value='<c:out value="${user.motDePasse}" />' required><br />
				<label for="confirme">Confirmer mot de passe</label>
				<input type="text" name="confirme" value='<c:out value="${param.confirme}" />' required><br />
				<span class="erreur">${error['confirme']}</span><br />
				<input class="hid" type="text" name="path" value="inscrire">
				<input type="submit" value="Inscription" class="sansLabel" /><br />
			</fieldset>
		</form>
		
		<p class="conect">Si vous avez un compte <a href="connexion">Connectez-vous</a></p>
		
	</main>
</body>
</html>