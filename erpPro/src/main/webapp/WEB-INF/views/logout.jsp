<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>

html,body{/* 
background-image:url("hr-management.jpg"); */
background-size: cover;
background-repeat: no-repeat;
background-attachment:fixed;
/* height: 100%; */
height:80%;
font-family: 'Numans', sans-serif;
}



</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<% session.invalidate(); %>
<h3 align="center" style="color:blue">You are now logged out!!</h3>
 
 
<center> <a href="/erpPro/showHome" >Go To HomePage</a></center>
 
</body>
</html>