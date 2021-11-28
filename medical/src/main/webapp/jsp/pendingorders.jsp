<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body table {
	width: 80%;
	margin: 2rem auto;
}

.extra {
	padding: 0;
	background-color: black;
}

.extra a {
	margin: 0.5rem; text-decoration : none;
	color: white;
	font-weight: bold;
	text-decoration: none;
}

.home {
	background-color: black;
	padding: 0.5rem;
	margin: 1rem auto;
	display: block;
	width: fit-content;
	text-align: center;
	color: white;
}

.home a {
	text-decoration: none;
	color: white;
}
</style>
<title>Patidar Medicines-Pending Orders</</title>
<link href="<c:url value="/resources/styles/cart.css" />"
	rel="stylesheet">
</head>
<body style="background-color: #D6E0E0;">
	<div class="home">
		<a href="<c:url value="/"/>">Home</a>
	</div>
	<c:set var="t_amt" scope="request" value="${0}" />
	<c:if test="${not empty pending_orders }">
		<table>
			<tr>
				<th>Name</th>
				<th>Order_Date</th>
				<th>Medicine Name</th>
				<th>Company</th>
				<th>Size of 1 unit</th>
				<th>Price of 1 unit</th>
				<th>Quantity(in units)</th>
				<th>Total price</th>
				<th>Deliver at</th>
			</tr>
			<tr>

			</tr>
			<tr>

				<c:forEach items="${pending_orders}" var="item">
					<tr>
						<td>${item.getName()}</td>
						<td>${item.getDate()}</td>
						<td>${item.getType()}</td>
						<td>${item.getCompany()}</td>
						<td>${item.getSize()}</td>
						<td>${item.getPrice()}</td>
						<td>${item.getQty()}</td>
						<td>${item.getTprice()}</td>
						<td>${item.getAddress()}</td>
						<td class="extra"><a
							href="<c:url value="/emp/setorderstatus/${item.getO_id()}"/>">Dispatch</a></td>
						<c:set var="t_amt" scope="request"
							value="${t_amt + item.getTprice()}" />
					</tr>
				</c:forEach>
				<br>
				<br>



			</tr>
		</table>
	</c:if>
	<div class="home">
	<c:if test="${empty pending_orders }">
		<h2>No pending Orders!</h2>
	</c:if>
	</div>
</body>
</html>