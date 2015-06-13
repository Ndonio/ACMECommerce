<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN Home</title>
</head>
<body>
	<f:view>
	
		<h:form>
		
		<h1>Benvenuto operatore: ${adminSessionManager.currentAdmin.email}</h1>

		<h2>Cosa Vuoi Fare?</h2>
		
		<div>
		    <a href='<c:url value="/faces/newProduct.jsp" />'> Inserisci un nuovo prodotto! </a>
		</div>
		
		<div>
			<p> gestisci ordini clienti (DA IMPLEMENTARE) </p>
		</div>
		
		<div>
			<h:commandButton value="Logout" action="#{adminController.logoutAdmin}" />
		</div>

		</h:form>
	</f:view>
</body>
</html>