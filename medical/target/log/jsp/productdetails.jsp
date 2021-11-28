<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
<link href="<c:url value="/resources/styles/productform.css" />" rel="stylesheet">
</head>




<body>
<header>
</header>
        <div class="form_p_container">
        <div class="form_p" align="center">
                <div class="login">
            <div class="form">
                <h2>Product Details</h2>
                <div class="group">
                   
                </div>
                <div class="group">
                    <h3>Medicine Name : ${type }</h3>
                </div>
                <div class="group">
                    <h3>Size of 1 unit : ${size }</h3>
                </div>
                <div class="group">
                        <h3>Company : ${company }</h3>
                </div>
                <div class="group">
                        <h3>Price of 1 unit : ${price }</h3>
                </div>
                <div class="group">
                        <h3>Quantity(in units) : ${qty }</h3>
                </div>
                <div class="group">
                        <h3>total price : ${tprice }</h3>
                </div>
                <div class="group">
                    <a href="<c:url value="/user/addtocart?pid=${pid}&qty=${qty}"/>">add to cart</a>
                    <a href="<c:url value="/user/productform"/>">cancel</a>
                </div>
        </div>
        
        </div> 
        </div>
        </div>
        <br>
        <br>
                
        </body>
    </html>

