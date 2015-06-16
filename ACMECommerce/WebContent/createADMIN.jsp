<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREAZIONE ADMIN</title>
</head>
<body>
	<f:view>
		<h:form>

			<h1>PAGINA DI CREAZIONE DI UN ADMIN</h1>

			<div>
				Email:
				<h:inputText value="#{adminController.email}" required="true"
					requiredMessage="Email is mandatory" id="email" />
				<h:message for="email" />
			</div>

			<div>
				Password:
				<h:inputText value="#{adminController.password}" required="true"
					requiredMessage="Password is mandatory" id="password" />
				<h:message for="password" />
			</div>

			<div>
				<h:commandButton value="Sign up"
					action="#{adminController.createAdmin}" />
			</div>

		</h:form>

	</f:view>
</body>
</html>