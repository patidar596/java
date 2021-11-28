<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patidar MEdicines - Orders</title>
<style>
table {	
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
tr:hover {background-color:#f5f5f5;}
</style>
</head>

<body  style="background-color:#D6E0E0;">

<h1>
<a href="<c:url value="/"/>"> <h4>Home</h4></a>
My Orders
</h1>
        <c:if test="${not empty orderlist }">
        <table >
          <thead>
            <tr class="table-headers">
              <th>Date</th>
              <th>Medicines Name</th>
              <th>Company</th>
              <th>Size Of 1 unit</th>
              <th>Price of 1 unit</th>
              <th>Quantity(in units)</th>
              <th>Total</th>
              <th>Status</th>
            </tr>
        </thead>
        <tbody>
            
        <c:forEach items = "${orderlist}" var = "item">
        <tr>
         <td>${item.getDate()}</td>
         <td>${item.getType()}</td>
         <td>${item.getCompany()}</td>
         <td>${item.getSize()}</td>
         <td>${item.getPrice()}</td>
         <td>${item.getQty()}</td>
         <td>${item.getTprice()}</td>
         <td>${item.getStatus()}</td>  
        </tr>
        </c:forEach>
        </tbody>
        </table>
        </c:if>
    <c:if test="${empty orderlist }">
           <h1>Oops, No Orders Yet!</h1>
    </c:if>
    
      </body>
    </html>
    
