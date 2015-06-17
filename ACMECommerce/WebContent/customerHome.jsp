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
<title>Customer Home</title>
</head>
<body>
	<f:view>
		<h:form>
			<div class="header clearfix">
				<nav>
					<ul class="nav nav-pills pull-right">
						<li role="presentation" class="active"><a
							href='<c:url value="/faces/customerHome.jsp" />'>Home</a></li>
						<li role="presentation"><h:commandLink
								action="#{customerController.logoutCustomer}">Logout
			</h:commandLink></li>

					</ul>
				</nav>
				<h3 class="text-muted">ACME Commerce</h3>
			</div>

			<h1>Bentornato in ACMECommerce:
				${customerSessionManager.currentCustomer.firstname}</h1>

			<h2>Cosa Vuoi Fare?</h2>

			<div>
				<h:commandButton value="Ordini Effettuati"
					action="#{orderController.listOrders}" />
			</div>

			<div>
				<h:commandButton value="Nuovo Ordine"
					action="#{orderController.createOrder}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>