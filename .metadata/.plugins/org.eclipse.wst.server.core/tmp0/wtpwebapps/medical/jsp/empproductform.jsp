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
<title>Add Product</title>
</head>
<body>
<header>
<div class="mylinks">
    <a href="<c:url value="/"/>">home</a>
</div>
</header>

<div class="form_p_container">
<div class="form_p" align="center">
		<div class="login">
<form:form class="form" modelAttribute="product" action="addproductprocess"
					method="POST">
			<c:if test="${not empty error_message}"><p> ${error_message}</p></c:if>
        <c:if test="${not empty error_message2}"><p> ${error_message2}</p></c:if>
        <p><c:if test="${update_iter > 0}">product has been added successfully!</c:if></p>
        <h2>Enter details of product to add</h2>
        <div class="group">
            <label for="user_password">Product Id:</label>
            <form:input type='text' path="P_id" name='P_id' />
        </div>
        <div class="group">
            <label for="user_id">Type:</label>
            <!-- <form:input type='text' path="Type" name='Type' /> -->
            <form:select name="Type" path="Type">
            <option value="Med1">Med1</option>
            <option value="Med2">Med2</option>
            <option value="Med3">Med3</option>
            <option value="Med4">Med4</option>
            </form:select>
        </div>
        <div class="group">
            <label for="user_password">Size:</label>
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
            <label for="user_password">Company:</label>
            <form:select name="Company" path="Company">
            <c:forEach items="${Companylist}" var="item">
            <option value="${item}">${item}</option>
            </c:forEach> 
            </form:select>
           <!-- <form:input type='text' path="Company" name='Company<%--  --%>' />   -->
        </div>
        <div>
           <label for="user_password">Price:</label>
           <form:input type='text' path="Price" name='Price' />
        </div>
       <div class="btn-group">
					<button name="submit" class="btn" type="submit">SUBMIT</button>
					<button class="btn" name="reset" type="reset">RESET</button>
				</div>
			
		</form:form>
		</div> 
</div>
</div>
<br>
<br>
</body>
</html>
