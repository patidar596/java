<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
<link href="<c:url value="/resources/styles/login.css" />" rel="stylesheet">

</head>
<body>

<h2>LOGIN FORM</h2>
<div class="home" > 
 <a href="<c:url value="/"/>">Home</a>

</div>

 <form action="<c:url value='j_spring_security_check'/>" class="form" method="POST">
  

  <div class="container">
    <label for="user_id"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="j_username" required>

    <label for="user_password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="j_password" required>
        
        <div class="btnContainer">
    <button type="submit">LOGIN</button>
    <button type="Reset" class="cancelbtn">RESET</button>
        </div>
    
  </div>

 
</form>

</body>
</html>
