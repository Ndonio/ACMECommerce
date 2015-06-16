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
<title>Product View</title>
</head>
<body>

	<div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href='<c:url value="/faces/home.jsp" />'>Home</a></li>
            <li role="presentation"><a href='<c:url value="/faces/loginCustomer.jsp" />'>Login</a></li>
            <li role="presentation"><a href='<c:url value="/faces/loginAdmin.jsp" />'>Admin</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">ACME Commerce</h3>
      </div>
      
      
	<f:view>
		<h1>Product View</h1>

		<h2>Dettagli del prodotto ${productController.product.name}:</h2>
		<div>Name: ${productController.product.name}</div>
		<div>Code: ${productController.product.code}</div>
		<div>Price: ${productController.product.price}</div>
		<div>Description: ${productController.product.description}</div>
		
		<div>
				<h:form>
				<h:commandLink action="#{productController.listProducts}"
					value="torna al catalogo" />
			</h:form>
		</div>

		
	</f:view>
</body>
</html>