<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link href="<c:url value="/resources/styles/dashboard.css" />"
	rel="stylesheet">
</head>
<body>



	<c:if test="${(user_role == 'ROLE_USER' )}">
		<header>

			<nav>
				<ul>
					<li><a href="user/cart"><h2>Cart</h2></a></li>
					<li><a href="user/details"><h2>My Details</h2></a></li>
					<li><a href="user/orders"><h2>Orders</h2></a></li>
				</ul>
			</nav>
			<h1> Welcome ${user_name}!</h1>
  <section class="features">
    <figure>
      
      <a href="user/productform">
      <figcaption>
      Product
      </figcaption>
      </a>
    </figure>
    <figure>
      <a href="user/ask_q">
      <figcaption>
      Ask your question
      </figcaption>
      </a>
    </figure>
    <figure>
      <a href="user/expertadvice">
      <figcaption>
      Contact Us
      </figcaption>
      </a>
      <!--   contact us    -->
    </figure>
    <figure>
      <a href="logout">
      <figcaption>
      LOG OUT
      </figcaption>
      </a>
      <!--   contact us    -->
    </figure>
  </section>
  </header>
	</c:if>

	<c:if test="${(user_role == 'ROLE_EMP' )}">
		<header>
			<nav>
				<ul>
					<li><a href="logout">Logout</a></li>
				</ul>
			</nav>
			<h1>Welcome ${user_name} !</h1>
			
			<section class="features">

			<figure>
				<figcaption>
					<a href="emp/faq">Pending Questions</a>
				</figcaption>
			</figure>
			<figure>
				<figcaption>
					<a href="emp/addproduct">Add a new Product!</a>
				</figcaption>
			</figure>
			<figure>
				<figcaption>
					<a href="emp/pendingorders">Pending Orders</a>
				</figcaption>
			</figure>
		</section>
		</header>
		

	</c:if>






</body>
</html>