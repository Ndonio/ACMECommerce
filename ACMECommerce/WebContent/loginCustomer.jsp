<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Customer</title>
</head>
<body>
	<f:view>
		<h:form>

			<h1>Login Customer</h1>

			<div>
				Email:
				<h:inputText value="#{customerController.email}" required="true"
					requiredMessage="Email is mandatory" id="email" />
				<h:message for="email" />
			</div>

			<div>
				Password:
				<h:inputText value="#{customerController.password}" required="true"
					requiredMessage="Password is mandatory" id="password" />
				<h:message for="password" />
			</div>

			<div>
				<h:commandButton value="Sign in"
					action="#{customerController.loginCustomer}" />
			</div>

		</h:form>

	</f:view>
</body>
</html>