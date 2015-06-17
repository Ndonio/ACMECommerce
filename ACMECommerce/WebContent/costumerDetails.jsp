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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dettagli Cliente</title>
</head>
<body>
	<f:view>	
	<div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href='<c:url value="/faces/home.jsp" />'>Home</a></li>
            <li role="presentation"><a href='<c:url value="/faces/loginCustomer.jsp" />'>Login</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">ACME Commerce</h3>
      </div>
		<h:form>
			<h1>Dettagli Cliente:</h1>

			<div>Nome: ${customerSessionManager.currentCustomer.firstname }</div>
			<div>Cognome: ${customerSessionManager.currentCustomer.lastname }</div>
			<div>Email: ${customerSessionManager.currentCustomer.email }</div>
			<div>Data di nascita: ${customerSessionManager.currentCustomer.birthday }</div>
			<div>Data di registrazione: ${customerSessionManager.currentCustomer.registrationDate }</div>
			<div>Indirizzo: ${customerSessionManager.currentCustomer.address }</div>
		</h:form>


	</f:view>

</body>
</html>