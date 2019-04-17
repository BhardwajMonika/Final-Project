
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">




	
.login100 {
  width: 350px;
  border-radius: 10px;
  padding: 55px 55px 37px 55px;
  background-color: black;
  height:400px;
  text-align:center;
  margin:100px 0 0 400px;
  opacity:0.6;
  
  }

.login100-form {
  width: 100%;
  height:400px;
}



.login100-form-title {
  font-family: Poppins-Medium;
  font-size: 30px;
  color: #fff;
  line-height: 1.2;
  text-align: center;
  text-transform: uppercase;
  margin-bottom:200px;
}

 .input100 {
  font-family: sans-serif;
  font-size: 16px;
  color: white;
  line-height: 1.2;
  display: block;
  width: 80%;
  height: 45px;
  background: transparent;
  padding: 0 8px 0 38px;
   position: relative;
    border-bottom: 2px solid grey;
    margin-top:25px;
     margin-bottom: 30px;
}

.login100-form-btn {
  font-family: sans-serif;
  font-size: 16px;
  color: #555555;
  line-height: 1.2;
   padding: 0 20px;
  min-width: 120px;
  height: 50px;
  border-radius: 20px;
  background-color:white;
   text-align: center;
   margin-top:40px;
   margin-bottom:20px;
}

.login100-form-btn:hover {
  background-color: green;
  color:white;
}

a {
	font-family: sans-serif;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin-top: 15px;
}

a:hover {
	text-decoration: none;
  color: #fff;
}



input {
	outline: none;
	border: none;
	background:transparent;
}

textarea {
  outline: none;
  border: none;
 
}

textarea:focus, input:focus {
  border-color: transparent !important;
  border:none;
}


html,body{
background-size: cover;
background-repeat: no-repeat;
background-attachment:fixed;
height:80%;
font-family: 'Numans', sans-serif;
}


</style>

<meta charset="ISO-8859-1">
<title>login here</title>
</head>
<body>

<body background="<c:url value="/resources/images/Login.jpg"/>">
			<div class="login100">
				<form action="adminView" class="login100-form" modelAttribute="admin">

					<span class="login100-form-title">Log in</span>

					<div class="input100" >
						<input class="input100" type="text" name="email" placeholder="Email">
					</div>

					<div class="input100">
						<input class="input100" type="password" name="password" placeholder="Password">
					</div>

					<div class="container-login100-form-btn">
						<a href="adminPage"><button class="login100-form-btn">Login</button></a>
					</div>
						<a class="txt1" href="#">Forgot Password?</a>
						<div style="color: red">${error}</div>
				</form>
			</div>
			

</body>
</html>