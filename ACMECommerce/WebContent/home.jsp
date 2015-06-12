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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ACMECommerce</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto in ACMECommerce!</h1>

		<li><a href='<c:url value="/faces/signUpCustomer.jsp" />'>
				signUp! </a></li>
		<li><a href='<c:url value="/faces/loginAdmin.jsp" />'> login
				Admin </a></li>
		<li><h:form>
				<h:commandLink action="#{productController.listProducts}"
					value="List all Products" />
			</h:form></li>

	</f:view>
</body>
</html>

