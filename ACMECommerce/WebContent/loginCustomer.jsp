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
<title>Login Customer</title>
</head>
<body>
	<div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href='<c:url value="/faces/home.jsp" />'>Home</a></li>
            <li role="presentation" class="active"><a href='<c:url value="/faces/loginCustomer.jsp" />'>Login</a></li>
            <li role="presentation"><a href='<c:url value="/faces/loginAdmin.jsp" />'>Admin</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">ACME Commerce</h3>
      </div>
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
				<h:commandButton action="#{customerController.loginCustomer}" style="display: none;">
				</h:commandButton>
			</div>
			
			<div>
			<h:commandLink action="#{customerController.loginCustomer}">
					 <p class="btn btn-md btn-success">Sign in</p> 
			</h:commandLink></div>

		</h:form>

	</f:view>
</body>
</html>