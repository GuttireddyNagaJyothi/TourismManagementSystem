<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tour List</title>
<style type="text/css">
body
{
 
   background-size: cover;
   background-image:url("${pageContext.request.contextPath}/resources/images/11.jpg");
   font-family:"Comic Sans MS",cursive,sans-serif;
}

table {
	margin-top:180px;
	margin-left:150px;
  border-collapse: collapse;
  width: 80%;
  border:3px solid black;
}

th, td {
  text-align: left;
  padding: 8px;
    border:3px solid black;
  
}

tr:nth-child(even){background-color: #bdbdbd}
tr:nth-child(odd){background-color: #6ccac8}

th {
  background-color: #4CAF50;
  color: white;
}

.List a
{
text-decoration: none;
font-size: 30px;
color:white;
}
a
{
text-decoration: none;
color:red;
}

</style>
</head>
<body>

<table>
		<tr>
			<td>Name</td>
			<td>From Location</td>
			<td>To Location</td>
			<td>NoOfDays</td>
			<td>Price</td>
			<td>Action</td>
		</tr>
		<c:forEach var="tempTours" items="${tourList}">
		
		<c:url var="updateLink" value="/tour/showFormForUpdate">
				<c:param name="tourId" value="${tempTours.id}"></c:param>
			</c:url>
		<c:url var="deleteLink" value="/tour/deleteTour">
				<c:param name="tourId" value="${tempTours.id}"></c:param>
			</c:url>
		
			<tr>
				<td>${tempTours.name}</td>
				<td>${tempTours.fromLocation}</td>
				<td>${tempTours.toLocation}</td>
				<td>${tempTours.noOfDays}</td>
				<td>${tempTours.price}</td>
				<td><a href="${updateLink}">UPDATE</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">DELETE</a></td>
			</tr>
		</c:forEach>
	</table>
		<p class="List" align="center">
		<a href="${pageContext.request.contextPath}/user/validateUser">Logout</a>
	</p>
</body>
</html>