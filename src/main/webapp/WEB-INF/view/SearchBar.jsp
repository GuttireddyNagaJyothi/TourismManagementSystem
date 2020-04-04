<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.error {
	color: red
}

body {
	background-color: rgb(4, 29, 49);
	background-image:
		url("${pageContext.request.contextPath}/resources/images/7.jpg");
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
			<form:form action="getDetails" modelAttribute="tour" method="POST">
				<table>
					<tr>
						<td>ID</td>
						<td><form:input path="id" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
	<p>
		<a href="${pageContext.request.contextPath}/user/validateUser">Logout</a>
	</p>
</body>
</html>