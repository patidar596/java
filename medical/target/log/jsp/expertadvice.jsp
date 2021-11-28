<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/styles/empdetails.css" />" rel="stylesheet">
<meta charset="UTF-8">
<title>Contact Us</title>

</head>
<body style="background-color:#D6E0E0;">


  <table>
  <caption>Contact Details</caption>
    <tr>
    <th>Phone no.</th>
    <th>Whatsapp us at</th>
    <th>E-mail</th>
    <th>Address</th>
    </tr>

    <tr>
         <td>123456</td>
         <td>9875641324</td>
         <td>patidarmedicnes111@outlook.com</td>
         <td>Indore , M.P</td>
         
    </tr>

      </table>
      <br>
      <br>
 
 <a href="<c:url value="/"/>">Home</a>
 </body>
</html>