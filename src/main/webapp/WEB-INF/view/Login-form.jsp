<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style type="text/css">
body
{
   margin:0;
   padding:0;
   background: #80ffff;
   background-size: cover;
   background-image:url("${pageContext.request.contextPath}/resources/images/7.jpg");
   font-family:"Comic Sans MS",cursive,sans-serif;
}
.title
{
	text-align: center;
	padding: 50px 0 20px;
}
.title
{
	margin:0;
	padding:0;
	color:#262626;
	text-transform: uppercase;
	font-size:20px;
}
.container
{
	position:relative;
	width:50%;
	height:400px;
	background:#fff;
	margin:0 auto;
	border:2px solid #fff;
	box-shadow: 0 15px 40px rgba(0,0,0,5);
}
.container .left
{
	float:left;
	width:50%;
	height:400px;
  	background-image:url("${pageContext.request.contextPath}/resources/images/8.jpg");
	background-size: cover;
	box-sizing:border-box;
}
.container .right
{
	float:right;
	width:50%;
	height:400px;
	padding-top:10px;
	padding-left:50px;
	background-color:#f4f4ee;
	box-sizing:border-box;
}
.formBox 
{
	width: 100%;
	padding:80px 40px;
	box-sizing: border-box;
	height:400px;
	text-align:center;
	background: #fff;
}
.formBox p
{
	margin:0;
	padding:0;
	font-weight: bold;
	text-align:center;
	color:#a6af13;
}
.formBox input
{
	margin-bottom:20px;
}
.formBox input[type="text"],
.formBox input[type="password"]
{
	border:none;
	border-bottom: 2px solid #a6af13;
	outline:none;
	height:40px;
}
.formBox input[type="text"]:focus,
.formBox input[type="Password"]:focus
{
	border-bottom: 2px solid #262626;
}	
.formBox input[type="submit"]
{
	border:none;
	outline:none;
	height: 40px;
	color:#fff;
	background:#262626;
	cursor: pointer;
}
.formBox input[type="submit"]:hover
{
	background:#a6af13;
}
.formBox a
{
	color:#262626;
	font-size: 12px;
	font-weight: bold;
}	



</style>
</head>
<body>
	<div class="title">
		<h1>User Login</h1>
	</div>
	<div class="container">
		<div class="left"></div>
		<div class="right">
			<div class="formbox">
				<form:form action="validateUser" modelAttribute="user" method="POST">
					<p>Username</p>
					<form:input path="username" />
					<p>Password</p>
					<form:input path="password" />
					<br>
					<br>
					<input type="submit" name="sub1" value="Login">
					<br>
				</form:form>
				<p>New account</p>
				<input type="button"
					onclick="window.location.href = 'showFormForAdd'; return false;"
					value="Signup">
			</div>
			<div>${errMsg}</div>
		</div>
	</div>
</body>
</html>