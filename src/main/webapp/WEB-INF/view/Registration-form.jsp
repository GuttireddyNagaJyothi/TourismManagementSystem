<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>

<style type="text/css">
.error {
	color: red
}

body {
	background-color: rgb(4, 29, 49);
    background-image:url("${pageContext.request.contextPath}/resources/images/14.jpg");
	
}

table {
	color: white;
	background-color: rgb(8, 48, 80);
	font-size: 20px;
	font-family: serif;
	padding: 10px;
	border: 5px solid white;
	text-align: -webkit-center;
}

h1 {
	text-align: center;
	color: black;
	font-size: 50px;
	font-family: serif;
}

h2 {
	text-align: center;
	color: lightblue;
	font-size: 25px;
	font-family: serif;
}

a {
	color: #000;
	font-size: 30px;
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
	<a href="http://localhost:8023/Tourism/">Home</a>
	<div align="center">
		<br>
		<h1>-->Tour System --</h1>
		<br>

		<div style="margin: 30px">
			<h2>-- User Registration Form --</h2>
			<br>
			<form:form action="saveUser" modelAttribute="user" method="POST">
				<table>
					<tr>
						<td>User name</td>
					</tr>
					<tr>
						<td><form:input path="username" /></td>
						<td><form:errors path="username" cssClass="error" /></td>
					</tr>
					<tr>
						<td>Password</td>
					</tr>
					<tr>
						<td><form:input path="password" /></td>
						<td><form:errors path="password" cssClass="error" /></td>
					</tr>
					<tr>
						<td>Email</td>
					</tr>
					<tr>
						<td><form:input path="email" /></td>
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="1" align="center"><input type="submit"
							value="Register"></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>