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
<title>Customer Home</title>
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
								action="#{customerController.logoutCustomer}"> Logout
			</h:commandLink></li>

					</ul>
				</nav>
				<h3 class="text-muted">ACME Commerce</h3>
			</div>


			<h1>${customerSessionManager.currentCustomer.firstname},
				aggiungi un prodotto</h1>
		</h:form>
	</f:view>

	<f:view>
		<h1>Lista Prodotti:</h1>
		<h:form>
			<table>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
				<c:forEach var="product" items="#{orderSessionManager.products}">
					<tr>
						<td><h:commandLink action="#{orderController.findProduct}"
								value="#{product.name}">
								<f:param name="productId" value="#{product.id}" />
							</h:commandLink></td>
						<td>${product.price}</td>
					</tr>
				</c:forEach>
			</table>

		</h:form>
	</f:view>

</body>
</html>