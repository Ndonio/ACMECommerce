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
<link href="css/jumbotron-narrow.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione cliente </title>
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
		<h:form>

			<h1>Benvenuto, inseriscei i tuoi dati!</h1>

			<div>
				Nome:
				<h:inputText value="#{customerController.firstname}" required="true"
					requiredMessage="campo obbligatorio" id="firstname" />
				<h:message for="firstname" />
			</div>

			<div>
				Cognome:
				<h:inputText value="#{customerController.lastname}" required="true"
					requiredMessage="campo obbligatorio" id="lastname" />
				<h:message for="lastname" />
			</div>

			<div>
				Nascita:
				<h:inputText id="birthday" value="#{customerController.birthday}"
					required="true" requiredMessage="campo obbligatorio">
					<f:convertDateTime pattern="yyyy-MM-dd" />
				</h:inputText>
				<h:message for="birthday" style=" color:black" />
			</div>

			<div>
				Email:
				<h:inputText value="#{customerController.email}" required="true"
					requiredMessage="campo obbligatorio" id="email" />
				<h:message for="email" />
			</div>

			<div>
				Password:
				<h:SecretText value="#{customerController.password}" required="true"
					requiredMessage="campo obbligatorio" id="password" />
				<h:message for="password" />
			</div>
			
			<h2>Inserisci i dati relativi al tuo indirizzo</h2>
				
				<div>
					Via:
					<h:inputText value="#{customerController.street}" required="true"
						requiredMessage="campo obbligatorio" id="street" />
					<h:message for="street" />
				</div>
				
				<div>
					Città:
					<h:inputText value="#{customerController.city}" required="true"
						requiredMessage="campo obbligatorio" id="city" />
					<h:message for="city" />
				</div>
				
				<div>
					Regione:
					<h:inputText value="#{customerController.region}" required="true"
						requiredMessage="campo obbligatorio" id="region" />
					<h:message for="region" />
				</div>
				
				<div>
					CAP:
					<h:inputText value="#{customerController.zipcode}" required="true"
						requiredMessage="campo obbligatorio" id="zipcode" />
					<h:message for="zipcode" />
				</div>
				
				<div>
					Stato:
					<h:inputText value="#{customerController.state}" required="true"
						requiredMessage="campo obbligatorio" id="state" />
					<h:message for="state" />
				</div>

			<div>
				<h:commandButton value="Sign up"
					action="#{customerController.createCustomer}" />
			</div>

		</h:form>

	</f:view>
</body>
</html>