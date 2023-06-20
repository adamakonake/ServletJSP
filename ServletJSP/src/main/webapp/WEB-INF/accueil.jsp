<%@page import="bean.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Accueil</title>
	<link type="text/css" rel="stylesheet" href="CSS/accueil.css">
</head>
<body>
	<main>
	<c:if test="${empty sessionScope }">
		<c:redirect url="connexion" />
	</c:if>
		<div class="header">
			<h1>
				BIENVENUE ${ sessionScope.current.nom } ${sessionScope.current.prenom }
			</h1>
			<div class="contentButton">
				<a class="decon" href="deconnexion">Deconnexion</a>
			</div>
		</div>
		
		<div class="listUser">
			<c:forEach var="users" items="${ sessionScope }">
				<c:if test="${users.key != 'current'}">
					<p> ${users.value.prenom} ${users.value.nom} ${users.value.mail}</p>
				</c:if>
		
			</c:forEach>
		</div>
	
	</main>
</body>
</html>