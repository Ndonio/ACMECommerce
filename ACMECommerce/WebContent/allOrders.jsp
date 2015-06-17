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
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Orders</title>
</head>
<body>
<f:view>
	<div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href='<c:url value="/faces/home.jsp" />'>Home</a></li>
            <li role="presentation"><a href='<c:url value="/faces/loginCustomer.jsp" />'>Login</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">ACME Commerce</h3>
      </div>
		<h1>Orders</h1>
		<h:form>
			<table>
				<tr>
					<th>ID</th>
					<th>Date</th>
					<th>CustomerID</th>
				</tr>
				<c:forEach var="order" items="#{customerSessionManager.orders}">
				<tr>
					<td>${order.id}</td>
					<td>${order.creationDate}</td>
					<td><h:commandLink value="#{order.customer.id}" action="#{orderController.getCustomerDetails}">
						<f:param name="orderId" value="#{order.customer.id}" />
					</h:commandLink></td>
					
				</tr>
			</c:forEach>
			</table>
		</h:form>


	</f:view>
</body>
</html>