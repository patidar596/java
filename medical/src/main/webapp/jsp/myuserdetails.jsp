<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/styles/empdetails.css" />" rel="stylesheet">
<meta charset="UTF-8">
<style >
.home {
	background-color: black;
	padding: 0.5rem;
	margin: 0 auto;
	display: block;
	width: 5rem;
	text-align: center;
} 

.home a{
	text-decoration: none;
	color: white;
}
</style>
<title>User Details</title>

</head>
<body style="background-color:#D6E0E0;">
<div class="home" > 
 <a href="<c:url value="/"/>">Home</a>
</div>


  <c:if test="${not empty custdetails }">
  <table>
  <caption>Your Details</caption>
    <tr>
    <th>Username</th>
    <th>Name</th>
    <th>Phone</th>
    <th>Email</th>
    <th>Address</th>
    </tr>

    <tr>
         <td>${custdetails.getUsername()}</td>
         <td>${custdetails.getName()}</td>
         <td>${custdetails.getPhone()}</td>
         <td>${custdetails.getEmail()}</td>
         <td>${custdetails.getAddress()}</td>
         
    </tr>

      </table>
      <br>
      <br>
 </c:if>
 <c:if test="${empty  custdetails}">
    No custdetails yet!
 </c:if>
 <div class="home">
 <a href="<c:url value="/user/updateprofile"/>">UPDATE</a>
 </div>
 </body>
 </html>
