<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <f:view>
		<h1>Benvenuto in ACMECommerce, Registrazione Effettuata!</h1>

		<h2>Dettagli della registrazione</h2>
		<div>Nome: ${customerController.customer.firstname}</div>
		<div>Cognome: ${customerController.customer.lastname}</div>
		<div>Data Nascita: ${customerController.customer.birthday}</div>
		<div>Email: ${customerController.customer.email}</div>

	</f:view>
</body>
</html>