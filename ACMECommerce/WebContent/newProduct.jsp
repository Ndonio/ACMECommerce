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
<title>New Product</title>
</head>
<body>
	<f:view>
		<h:form>

			<div class="header clearfix">
				<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation"><a
						href='<c:url value="/faces/home.jsp" />'>Home</a></li>
					<li role="presentation"><h:commandLink
							action="#{adminController.logoutAdmin}">Logout
			</h:commandLink></li>
					<li role="presentation"><a
						href='<c:url value="/faces/loginAdmin.jsp" />'>Admin</a></li>
				</ul>
				</nav>
				<h3 class="text-muted">ACME Commerce</h3>
			</div>
		</h:form>

		<h:form>
			<div>
				Name:
				<h:inputText id="name" value="#{productController.name}"
					required="true" requiredMessage="name is mandatory" />
				<h:message for="name" />
			</div>

			<div>
				Code:
				<h:inputText id="code" value="#{productController.code}"
					required="true" requiredMessage="code is mandatory" />
				<h:message for="code" />
			</div>

			<div>
				Price:
				<h:inputText id="price" value="#{productController.price}"
					required="true" requiredMessage="Price is mandatory"
					converterMessage="Price must be a number!" />
				<h:message for="price" />
			</div>

			<div>
				Description:
				<h:inputTextarea value="#{productController.description}"
					required="false" cols="20" rows="5" />
			</div>

			<div>
				<h:commandButton action="#{productController.createProduct}"
					style="display: none;">
				</h:commandButton>
			</div>

			<div>
				<h:commandLink action="#{productController.createProduct}">
					<p class="btn btn-md btn-success">Insert Product</p>
				</h:commandLink>
			</div>


		</h:form>

		<h:form>

			<div>
				<a href=<c:url value="/faces/adminHome.jsp" />
					class="btn btn-md btn-danger">Annulla Inserimento</a>
			</div>

		</h:form>

	</f:view>
</body>
</html>