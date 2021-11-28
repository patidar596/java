<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patidar Medicines-Cart</title>
<style>
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

table {
	border-collapse: collapse;
	width: 75%;
	margin: 0 auto;
}


th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	border: 1px solid white;
}

h1 {
	margin-top: 4rem;
	text-align: center;
}


 td a {
 width: 100%;
 color: white;
 margin-left: 1rem; 
 text-decoration: none;
 
 }
 .buy {
 background-color: black;
 margin: 2rem auto;
 width: fit-content;
 padding: 0.5rem 1rem;
 }
 .buy a {
 text-decoration : none; 
 color: white;
 font-weight: bold;
 }
 
 .extra {
 padding: 0;
 background-color: black;
 }

tr:hover {
	background-color: #f5f5f5;
}
</style>
</head>

<body style="background-color: #D6E0E0;">
<div class="home" > 
 <a href="<c:url value="/"/>">Home</a>
</div>

	<c:if test="${not empty cartlist }">
		<c:set var="t_amt" scope="request" value="${0}" />
		<h1>MY CART</h1>
		<table>
			<thead>
				<tr class="table-headers">
					<th>Medicine Name</th>
					<th>Company</th>
					<th>Size of 1 unit</th>
					<th>Price of 1 unit</th>
					<th>Quantity(in units)</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${cartlist}" var="item">
					<tr>
						<td>${item.getType()}</td>
						<td>${item.getCompany()}</td>
						<td>${item.getSize()}</td>
						<td>${item.getPrice()}</td>
						<td>${item.getQty()}</td>
						<td>${item.getTprice()}</td>
						<td class="extra"><a
							href="<c:url value="/user/delcart/${item.getC_id()}"/>">DELETE</a></td>
						<c:set var="t_amt" scope="request"
							value="${t_amt + item.getTprice()}" />
					</tr>
				</c:forEach>


				<tr class="total">
					<td>Net Total</td>
					<td class="total" colspan="5"><c:out value="${t_amt}" /></td>
				</tr>
			</tbody>
		</table>
		<div class="buy">
		<a href="<c:url value="/user/buy"/>">BUY ITEMS</a>
		
		</div>
	</c:if>
	<c:if test="${empty cartlist }">
		<div class="emptycart">
			<h2>Oops, Cart is empty!</h2>

		</div>
	</c:if>
	
</body>
</html>
