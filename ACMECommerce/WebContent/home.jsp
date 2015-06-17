<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<link href="css/home.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ACMECommerce</title>
</head>
<body>

	<div class="header clearfix">
		<nav>
			<ul class="nav nav-pills pull-right">
				<li role="presentation" class="active"><a
					href='<c:url value="/faces/home.jsp" />'>Home</a></li>
				<li role="presentation"><a
					href='<c:url value="/faces/loginCustomer.jsp" />'>Login</a></li>
				<li role="presentation"><a
					href='<c:url value="/faces/loginAdmin.jsp" />'>Admin</a></li>
			</ul>
		</nav>
		<h3 class="text-muted">ACME Commerce</h3>
	</div>


	<div class="jumbotron">
		<h1>Benvenuti in ACME Commerce</h1>
		<p class="lead">Registrati gratuitamente per effetuare ordini e
			acquistare i tuoi prodotti preferiti direttamente dal nostro
			ricchissimo catalogo</p>
		<p>
			<a class="btn btn-lg btn-success"
				href='<c:url value="/faces/signUpCustomer.jsp" />' role="button"> Iscriviti! </a>
		</p>
	</div>


	<f:view>
		<h:form>
			<div class="jumbotron">
				<h1>Visita il Catalogo</h1>
				<p class="lead">Controlla il nostro catalogo senza bisogno di alcuna registrazione</p>
				<h:commandLink action="#{productController.listProducts}">
					<p class="btn btn-lg btn-success">Vai al Catalogo</p>
				</h:commandLink>
			</div>
		</h:form>
	</f:view>


</body>
</html>

