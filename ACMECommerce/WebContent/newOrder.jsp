<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Order</title>
</head>
<body>
	<f:view> 
		<h1>
			<b>${customerSessionManager.currentCustomer.firstname}, inserisci
				codice e quantita' del prodotto</b>
		</h1>

		<h:form>

			<p>Da implementare!</p>

			<div>
				<h:commandButton value="Add Product" action="productListOrder" />
			</div>

		</h:form>

	</f:view>
</body>
</html>