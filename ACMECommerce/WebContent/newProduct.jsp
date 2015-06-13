<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Product</title>
</head>
<body>
	<f:view>
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
				<h:commandButton value="Insert Product!"
					action="#{productController.createProduct}" />
			</div>

		</h:form>
		
		<h:form>
		<div>
			<h:commandButton value="Logout" action="#{adminController.logoutAdmin}" />
		    </div>
		    
		    <div>
			<h:commandButton value="Annulla Inserimento" action="adminHome" />
		    </div>
		</h:form>

	</f:view>
</body>
</html>