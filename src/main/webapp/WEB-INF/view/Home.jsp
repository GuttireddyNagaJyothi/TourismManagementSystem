<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<style>
body {
	background: #fff;
	text-align: center;
}

img {
	width: 100%;
}

.container {
	position: relative;
	text-align: center;
	color: white;
}

.Top {
	position: absolute;
	top: 0;
	font-size: 45px;
	background: #88ffff;
	width: 100%;
	text-align: left;
}

.Main {
	position: absolute;
	top: 20%;
	left: 50%;
	font-size: 50px;
	transform: translate(-50%, -50%);
}

.Center1 {
	position: absolute;
	top: 35%;
	left: 50%;
	font-size: 40px;
	transform: translate(-50%, -50%);
}

.Center2 {
	position: absolute;
	top: 40%;
	left: 50%;
	font-size: 40px;
	transform: translate(-50%, -50%);
}

.Center3 {
	position: absolute;
	top: 45%;
	left: 50%;
	font-size: 40px;
	transform: translate(-50%, -50%);
}

a {
	color: black;
	text-decoration: none;
}

.bottom {
	padding: 5px;
	margin-top: 0px;
	background: #88ffff;
	text-align: center;
}
</style>
</head>
<body>

	<div class=" container">
		<img src="${pageContext.request.contextPath}/resources/images/4.jpg">
		<div class="Top">
			<a href="#">Tourism</a>
		</div>
		<div class="Main">
			<p>Welcome to Tourism!!</p>
		</div>
		<div class="Center1">
			<a href="http://localhost:8023/Tourism/tour/list">List All Tours</a>
		</div>
		<div class="Center2">
			<a href="http://localhost:8023/Tourism/tour/showFormForAdd">Add
				Tour</a>
		</div>
		<div class="Center3">
			<a href="http://localhost:8023/Tourism/tour/searchTour">Search Tour</a>
		</div>
	</div>
	<footer class=bottom>
		<p>Copyright &copy; from 2020 of India,SampreetKumar</p>
	</footer>
</body>
</html>



