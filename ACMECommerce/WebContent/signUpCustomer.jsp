<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp Customer</title>
</head>
<body>
	<f:view>
		<h:form>
			<div>
				FirstName:
				<h:inputText value="#{customerController.firstname}" required="true"
					requiredMessage="Firstname is mandatory" id="firstname" />
				<h:message for="firstname" />
			</div>

			<div>
				LastName:
				<h:inputText value="#{customerController.lastname}" required="true"
					requiredMessage="Lastname is mandatory" id="lastname" />
				<h:message for="lastname" />
			</div>

			<div>
				Birthday:
				<h:inputText id="birthday" value="#{customerController.birthday}"
					required="true" requiredMessage="Birthday is mandatory">
					<f:convertDateTime pattern="yyyy-MM-dd" />
				</h:inputText>
				<h:message for="birthday" style=" color:black" />
			</div>

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
				<h:commandButton value="Sign up"
					action="#{customerController.createCustomer}" />
			</div>

		</h:form>

	</f:view>
</body>
</html>