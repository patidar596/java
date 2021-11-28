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
<title>Ask your Question</title>
</head>

<body style="background-color:#D6E0E0;">
<c:if test="${empty q_done }">
		<h1 id="banner">Submit Your Question</h1>  
		<form:form class="form" modelAttribute="myquestion" action="add_q/"
					method="POST">
			<c:if test="${not empty error_msg}"><br><br><br>${error_msg}</c:if>
					
			
				 <div class="group">
                        <label for="user_id">Please Type Your Question here:</label>
                        <form:input type='text' path="mystring" name='mystring'  />
                   </div>
				   <div class="btn-group">
					<td colspan='2'><input type="submit" value="Submit" />&nbsp;<input name="reset" type="reset" /></td>
				   </div>
		</form:form>
</c:if>
<c:if test="${not empty q_done }">Your Question has been submitted. We will reply to you as soon as possible. Have a great day!</c:if>
<a href="<c:url value="/"/>">Home</a>
</body>

</html>
