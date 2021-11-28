<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patidar Medicines-Cart</title>
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

 <body style="background-color:#D6E0E0;">
    <c:if test="${not empty cartlist }">
     <c:set var="t_amt" scope="request" value="${0}"/> 
    <h1>My Cart</h1>
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
        
    <c:forEach items = "${cartlist}" var = "item">
    <tr>
            <td>${item.getType()}</td>
            <td>${item.getCompany()}</td>
            <td>${item.getSize()}</td>
            <td>${item.getPrice()}</td>
            <td>${item.getQty()}</td>
            <td>${item.getTprice()}</td>
            <td><a href="<c:url value="/user/delcart/${item.getC_id()}"/>">delete</a></td>
            <c:set var="t_amt" scope="request" value="${t_amt + item.getTprice()}"/>  
    </tr>
    </c:forEach>
        
        
        <tr class="total">
          <td>Net Total</td>
          <td class="total" colspan="5"><c:out value="${t_amt}"/></td>
        </tr>
      </tbody>
    </table>
    <a  href="<c:url value="/user/buy"/>">Buy Items</a>
 </c:if>
<c:if test="${empty cartlist }">
 <div class="emptycart">
       <h2>Oops, Cart is empty!</h2>
       
 </div>
</c:if>
<a href="<c:url value="/"/>"><h2>Home</h2></a>
  </body>
</html>
