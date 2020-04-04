<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Tour</title>

<style type="text/css">
.error {
	color: red
}

body {
	background-color: rgb(4, 29, 49);
	   background-image:url("${pageContext.request.contextPath}/resources/images/7.jpg");
}

table {
	color: white;
	background-color: black;
	font-size: 20px;
	font-family: serif;
	padding: 10px;
	border: 5px solid white;
	text-align: -webkit-center;
}

h1 {
	text-align: center;
	color: #ffb308;
	font-size: 50px;
	font-family: serif;
}

h2 {
	text-align: center;
	color: white;
	font-size: 25px;
	font-family: serif;
}

a {
	color: #fff;
	font-size: 20px;
	font-weight: bold;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
	text-align: center;
}

input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border-radius: 4px;
}

input[type=submit] {
	width: 40%;
	padding: 10px 15px;
	margin: 8px 0;
	box-sizing: border-box;
	border-radius: 20px;
	background-color: #a27996;
}
</style>
</head>
<body>
	<div align="center">
		<br>
		<h1>-->Tour System --</h1>
		<br>

		<div style="margin: 30px">
			<h2>-- Add Tour Form --</h2>
			<br>
			<form:form action="saveTour" modelAttribute="tour" method="POST">
				<form:hidden path="id" />
				<table>
					<tbody>
						<tr>
							<td><label>Name:</label></td>
							<td><form:input path="name" /></td>
							<td><form:errors path="name" cssClass="error" /></td>
						</tr>
						<tr>
							<td><label>From Location:</label></td>
							<td><form:input path="fromLocation" /></td>
							<td><form:errors path="fromLocation" cssClass="error" /></td>
						</tr>
						<tr>
							<td><label>To Location:</label></td>
							<td><form:input path="toLocation" /></td>
							<td><form:errors path="toLocation" cssClass="error" /></td>
						</tr>
						<tr>
							<td><label>No Of Days:</label></td>
							<td><form:input path="noOfDays" /></td>
							<td><form:errors path="noOfDays" cssClass="error" /></td>
						</tr>
						<tr>
							<td><label>Price:</label></td>
							<td><form:input path="price" /></td>
							<td><form:errors path="price" cssClass="error" /></td>
						</tr>
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save"></td>
						</tr>
					</tbody>
				</table>
			</form:form>
		</div>
	</div>
	<p>
		<a href="${pageContext.request.contextPath}/tour/list">Back to
			List</a>
	</p>
</body>
</html>