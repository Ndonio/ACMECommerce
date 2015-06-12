<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp Customer</title>
</head>
<body>
	<f:view>
		<h:form>

			<h1>SignUp Customer!</h1>

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
			
			<h2>Inserisci i dati relativi al tuo indirizzo</h2>
				
				<div>
					Street:
					<h:inputText value="#{customerController.street}" required="true"
						requiredMessage="Street is mandatory" id="street" />
					<h:message for="street" />
				</div>
				
				<div>
					City:
					<h:inputText value="#{customerController.city}" required="true"
						requiredMessage="City is mandatory" id="city" />
					<h:message for="city" />
				</div>
				
				<div>
					Region:
					<h:inputText value="#{customerController.region}" required="true"
						requiredMessage="Region is mandatory" id="region" />
					<h:message for="region" />
				</div>
				
				<div>
					Zip Code:
					<h:inputText value="#{customerController.zipcode}" required="true"
						requiredMessage="Zip Code is mandatory" id="zipcode" />
					<h:message for="zipcode" />
				</div>
				
				<div>
					State:
					<h:inputText value="#{customerController.state}" required="true"
						requiredMessage=" State is mandatory" id="state" />
					<h:message for="state" />
				</div>

			<div>
				<h:commandButton value="Sign up"
					action="#{customerController.createCustomer}" />
			</div>
			
			<div>
				<a href='<c:url value="/faces/home.jsp" />'> HOME! </a>
			</div>

		</h:form>

	</f:view>
</body>
</html>