<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/styles/faq.css" />" rel="stylesheet">
<meta charset="UTF-8">
<title>FAQ Page</title>

<c:if test="${(user_role == 'ROLE_EMP')}">

 
 
  <div class="content">
        <h1>FAQs</h1>       
           <c:if test="${not empty pending_questions }">
           <c:forEach items = "${pending_questions}" var = "item">
           <div>
                <input type="checkbox" id="question9" name="q" class="questions">
                <div class="plus">+</div>
                <label for="question9" class="question">
                        ${item.getQuestion()}
                        <a href="<c:url value="/emp/del_q/${item.getQ_id()}"/>">delete</a>
                </label>
                
                     <form class="answers" action="<c:url value='/emp/ans_q/${item.getQ_id()}'/>" id="form">
                        <p><input type="text" placeholder="" id="Answer" name="Answer" size="300"/></p>
                        <p><input type="submit" value="Submit"  /></p>
                </form>
                
           </div>
           </c:forEach>
        </c:if>
        <c:if test="${empty  pending_questions}">
           No pending Questions!
        </c:if>
    </div> 
</c:if>




<a href="<c:url value="/"/>">Home</a>
</body>
</html>