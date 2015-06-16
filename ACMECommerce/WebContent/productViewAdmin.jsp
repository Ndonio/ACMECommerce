<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product View</title>
</head>
<body>
	<f:view>
		<h1>Product View</h1>

		<h2>Dettagli del prodotto ${productController.product.name}:</h2>
		<div>Name: ${productController.product.name}</div>
		<div>Code: ${productController.product.code}</div>
		<div>Price: ${productController.product.price}</div>
		<div>Description: ${productController.product.description}</div>
		
			<div>
			<h:form>
				<h:commandLink action="newProduct"
					value="inserisci un altro prodotto" />
			</h:form>
		</div>
		
		<div>
			<h:form>
				<h:commandLink action="adminHome"
					value="torna alla home" />
			</h:form>
		</div>
		
		<div>
			<h:form>
				<h:commandLink action="#{adminController.logoutAdmin}"
					value="logout" />
			</h:form>
		</div>

	</f:view>
</body>
</html>