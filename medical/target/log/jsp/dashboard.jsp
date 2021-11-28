<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link href="<c:url value="/resources/styles/dashboard.css" />" rel="stylesheet">
</head>
<body>



<c:if test="${(user_role == 'ROLE_USER' )}" >
 <header>

    <nav>
      <ul>
        <li>
          <a href="<c:url value="/"/>"><h2>Home</h2></a>
        </li>
        
        <li>
          <a href="user/cart"><h2>My Cart</h2></a>
        </li>
        <li>
          <a href="user/details"><h2>My Details</h2></a>
        </li>
        <li>
          <a href="user/orders"><h2>Orders</h2></a>
        </li>
        <li>
          <a href="logout"><h2>Logout</h2></a>
        </li>
      </ul>
    </nav>
     <h1 color:"blanchedalmond";>Hey ${user_name} Welcome to Patidar Medicines!</h1>
  </header>
  <section class="features">
    <figure>
      <img src="<c:url value="/resources/styles/med1.jpg" />" />
      <figcaption><a href="user/productform">Product</a></figcaption>
    </figure>
    <figure>
      <img src="<c:url value="/resources/styles/aq.jpeg" />"  />
      <figcaption><a href="user/ask_q">Ask your question</a></figcaption>
    </figure>
    <figure>
      <img src="<c:url value="/resources/styles/expert_advice.jpeg" />"  />
      <figcaption><a href="user/expertadvice">Contact Us</a></figcaption>
      <!--   contact us    -->
    </figure>
  </section>
</c:if>

<c:if test="${(user_role == 'ROLE_EMP' )}" >
<header>
<nav>
      <ul>
        <li>
          <a href="logout">Logout</a>
          
        </li>
      </ul>
    </nav>
<h1>Welcome ${user_name} !</h1></header>
 <section class="features">
    
    <figure>
      <img src="<c:url value="/resources/styles/aq.jpeg" />" />
      <figcaption><a href="emp/faq">Pending Questions</a></figcaption>
    </figure>
    <figure>
      <img src="<c:url value="/resources/styles/med1.jpg" />"  />
      <figcaption><a href="emp/addproduct">Add a new Product!</a></figcaption>
    </figure>
    <figure>
      <img src="<c:url value="/resources/styles/po1.png" />"   />
      <figcaption><a href="emp/pendingorders">Pending Orders</a></figcaption>
    </figure>
 </section>

</c:if>






</body>
</html>