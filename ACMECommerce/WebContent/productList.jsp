<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Products</title>
</head>
<body>
	<f:view>
		<h1>Products</h1>
		<h:form>
			<table>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
				<c:forEach var="product" items="#{productController.productList}">
					<tr>
						<td><h:commandLink action="#{productController.findProduct}"
								value="#{product.name}">
								<f:param name="id" value="#{product.id}" />
							</h:commandLink></td>
						<td>${product.price}</td>
					</tr>
				</c:forEach>
			</table>
		</h:form>

		<div>
			<a href='<c:url value="/faces/home.jsp" />'> torna alla home! </a>
		</div>

	</f:view>
</body>
</html>