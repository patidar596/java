<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/styles/REG.css" />"
	rel="stylesheet">
</head>
<body>

	<h2>REGISTER</h2>
	<div class="home">
		<a href="<c:url value="/"/>">Home</a>
	</div>

	<div class="container">
		<c:if test="${not empty msg}">${msg}<br>
		</c:if>
		<c:if test="${not empty new_msg}">${new_msg}</c:if>
		<c:if test="${not empty user_error}">${user_error}</c:if>

		<form class="form" modelAttribute="user" action="registerprocess"
			method="POST">

			<label for="user_id"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="Username" id="Username" required>

			<label for="user_password"><b>Password</b></label> <input type="text"
				placeholder="Enter Password" name="Password" id="Password" required>

			<label for="user_password"><b>Name</b></label> <input type="text"
				placeholder="Enter Name" name="Name" id="Name" required> <label
				for="user_password"><b>Address</b></label> <input type="text"
				placeholder="Enter Address" name="Address" id="Address" required>

			<label for="user_password"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="Email" id="Email" required>

			<label for="user_password"><b>Phone</b></label> <input type="text"
				placeholder="Enter Phone" name="Phone" id="Phone" required>
			<div class="btnContainer">

				<button type="submit" class="registerbtn">Register</button>
				<button type="reset" class="cancelbtn">Reset</button>
			</div>
	</div>
	</form>

	<div class="container signin">
		<p>
			Already have an account? <a href="<c:url value="/login"/>">Sign
				in</a>.
		</p>

	</div>


</body>
</html>
