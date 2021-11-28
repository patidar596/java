<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/styles/productform.css" />" rel="stylesheet">
<meta charset="UTF-8">
<title>Select Product</title>
</head>

<body>
<header>
<div class="mylinks">
    <a href="<c:url value="/"/>">home</a>
    <a href="/log/user/cart">Mycart</a>
</div>
</header>


		
<div class="form_p" align="center" >
<div class="login">
 <form:form class="form" modelAttribute="product" action="getproduct" method="POST">
        <c:if test="${not empty error_message}"><p> ${error_message}</p></c:if>
        <c:if test="${not empty error_message2}"><p> ${error_message2}</p></c:if>
        <h2>Product</h2>
        <div class="group">
            <label for="user_id">Medicines List:</label>
            <!-- <form:input type='text' path="Type" name='Type' /> -->
            <form:select name="Type" path="Type">
            <option value="Med1">Med1</option>
            <option value="Med2">Med2</option>
            <option value="Med3">Med3</option>
            <option value="Med4">Med4</option>
            </form:select>
        </div>
        
        <div class="group">
            <label for="user_password">Manufacturer's Name:</label>
            <form:select name="Company" path="Company">
            <c:forEach items="${Companylist}" var="item">
            <option value="${item}">${item}</option>
            </c:forEach> 
            </form:select>
         </div>
        
        <div class="group">
            <label for="user_password">Size of 1 unit:</label>
            <%-- <form:input type='text' path="Size" name='Size' /> --%>
            <form:select name="Size" path="Size">
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="30">30</option>
            <option value="50">50</option>
            <option value="100">100</option>
            <option value="150">150</option>
            </form:select>
        </div>
        
        <div class="group">
            <label for="user_password">Quantity(in units):</label>
            <%--  <form:input type='text' path="Quantity" name='Quantity' />--%>
            <form:select name="Quantity" path="Quantity">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            </form:select>
        </div>
        <div class="btn-group">
            <td colspan='2'><input name="submit" type="submit">&nbsp;<input name="reset" type="reset"></td>
        </div>
</form:form>
</div>
</div>



<br>
<br>
		
</body>
</html>
