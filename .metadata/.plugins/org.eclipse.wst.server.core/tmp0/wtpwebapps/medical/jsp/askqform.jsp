<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/styles/register.css" />" rel="stylesheet">
<meta charset="UTF-8">
<style>
body {

 justify-content: center;
  align-items: center;
  background-image: url("../resources/styles/tt.jpg");
  background-position: center;
  height: 700px;
  box-sizing: border-box;
}
form {
width: 70%;
margin: 2rem auto;
}
h1 {
	margin-top: 4rem;
	text-align: center;
	color: white;
	-webkit-text-stroke: 1px rgba(0,0,0,0.5);
   text-stroke: 1px rgba(0,0,0,0.5);
	
}

.home {
	background-color: black;
	padding: 0.5rem;
	margin: 0 auto;
	display: block;
	width: 5rem;
	text-align: center;
	margin-top: 3rem;
} 

.home a{
	text-decoration: none;
	color: white;
}

.form {
padding-top: 3rem;
width: 60%;
  height: fit-content;
  background-color: rgba(255, 255, 255, .15);
   backdrop-filter: blur(7px);
   border-radius: 10px;
   margin-top: 2rem;
   padding-bottom: 2rem;}
   
   .form div {
   width: 70%;
   margin: 2rem auto;
   }
   
   .form div label{
   font-size: 1.2rem;
   font-weight: bold;
   }

.form .btn {
  font-family: "Noto Sans TC", sans-serif;
	font-weight: bold;
  border-radius: 5px;
  border: 1px solid white;
  background-color: #729d99;
  width: 6rem;
  padding: 10px 0;
  color: #fff;
  text-color: white;
  margin: 1rem;
}
</style>
<title>Ask your Question</title>
</head>

<body style="background-color:#D6E0E0;">
<div class="home" > 
 <a href="<c:url value="/"/>">Home</a>
</div>
<c:if test="${empty q_done }">
		<h1 id="banner">ASK YOUR QUERY</h1>  
		<form:form class="form" modelAttribute="myquestion" action="add_q/"
					method="POST">
			<c:if test="${not empty error_msg}"><br><br><br>${error_msg}</c:if>
					
			
				 <div class="group">
                        <label for="user_id">Please Type Your Question here:</label>
                        <form:input type='text' path="mystring" name='mystring'  />
                   </div>
				   <div class="btn-group">
					<button name="submit" class="btn" type="submit">SUBMIT</button>
					<button class="btn" name="reset" type="reset">RESET</button>
				</div>
		</form:form>
</c:if>
<c:if test="${not empty q_done }">Your Question has been submitted. We will reply to you as soon as possible. Have a great day!</c:if>

</body>

</html>
