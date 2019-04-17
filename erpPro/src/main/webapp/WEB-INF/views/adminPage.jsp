
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />"/>
    
<style type="text/css">

.navbar
{
height:80px;	
color:white;
font-size:29px;
}
.navbar-brand{
color:white;
}

body {
  font-size: 1rem;
  width: 213px;
height: 28px;
padding: 6px 0 0 7px;
border: none;
}



 
 .toggled .sidebar-wrapper {
  left: 0px;
  padding-top:30px;
   border-top: 1px solid aqua;
    border-color: transparent;
    box-shadow: none;
}

.sidebar-wrapper {
  width: 260px;
  height: 100%;
  max-height: 100%;
  position: fixed;
  top: 0;
  left: -300px;
  z-index: 999;
  
}

.sidebar-wrapper ul {
  list-style-type: none;
  padding: 0;
  margin: 15px;;
  
}

.sidebar-wrapper a {
  text-decoration: none;
}

.sidebar-wrapper .sidebar-brand {
  padding: 10px 20px;
  display: flex;
  align-items: center;
}

.sidebar-wrapper .sidebar-header {
  padding: 20px;
  overflow: hidden;
}


.sidebar-wrapper .sidebar-menu {
  padding-bottom: 10px;
}

.sidebar-wrapper .sidebar-menu .header-menu span {
  font-weight: bold;
  font-size: 14px;
  padding: 15px 20px 5px 20px;
  display: inline-block;
}

.sidebar-wrapper .sidebar-menu ul li a {
  display: inline-block;
  width: 100%;
  text-decoration: none;
  position: relative;
  padding: 8px 30px 8px 20px;
  color:#999999;
}
.sidebar-wrapper .sidebar-menu ul li a:hover{
	
color:white;
background-color:green;
}

.sidebar-wrapper .sidebar-menu> a:after {
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  font-style: normal;
  text-align: center;
  background: 0 0;
  position: absolute;
  right: 15px;
  top: 14px;
  
}


 .page-content {
  display: inline-block;
  width: 100%;
  padding-left: 0px;
  padding-top: 20px;
}

 .page-content > div {
  padding: 20px 40px;
}

.chiller-theme .sidebar-wrapper {
    background: #31353D;
}

.chiller-theme.toggled #close-sidebar {
    color:white;
}

.chiller-theme .sidebar-wrapper .sidebar-menu .header-menu span {
    color: white;
}
 .logoutBtn{
	float:right;
	font-size:18px;
	color:white;
	background-color:green;
	border: 1px solid green;
	border-radius:5px;
	margin-left:800px;
}
 .logoutBtn:hover{
  transition:0.3s;
 font-size:22px;
 }
.adminpic{
	height:90px;
	width:90px;
	margin-left:20px;	
	}
	
 .adminDetails{
 	text-align:center;
 	font-weight:bold;
	border-radius:10px;
 	background-color:white;
 	height:90%;
 	width:90%;
 	font-size:15px;
 	font-family:Arial, Helvetica, sans-serif;
 	color:blue;
    margin-left:300px;
	rowspan:50px;
	border-spacing: 6em .5em;
  padding: 16em 16em 16em 16em;
  border: 5px solid orange;
	}
    
td {
  width: 1.5em;
  height: 1.5em;
  background: #d2d2d2;
  text-align: center;
  vertical-align: middle;
}	
 .img1{
 	margin-top:50px;
 	margin-left:300px;
 	}
 
</style>

   <title>welcome Admin</title>   
  </head>
  
<body background="<c:url value="../../resources/images/bg_003.jpg"/>">
 <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  
 <a class="navbar-brand">EMS</a>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
  
  <a href="../showHome"><button class="logoutBtn">Logout</button></a>
  

 
</nav><br/><br/>

 <div class="page-wrapper chiller-theme toggled">
 
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
    <div class="sidebar-brand">
        <div id="close-sidebar">
        </div>
      </div> 
      <div class="sidebar-header">  
      </div>
  <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>General</span>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <span>View Profile</span>
            </a>
         </li>
          <li class="sidebar-dropdown">
            <a href="/erpPro/employee/showForm">
            <span>Add Employee</span>
          </a>
          <li class="sidebar-dropdown">
            <a href="/erpPro/employee/list">
             <span>View Employee</span>
            </a>
           </li>
         
          <li class="header-menu">
            <span>Extra</span>
          </li>
          <li>
            <a href="#">
        <span>Social Networking</span>
             </a>
          </li>
          <li>
            <a href="#">
          <span>Miscellaneous</span>
            </a>
          </li>
          </ul>
      </div>
      </div>
       
      
  </nav>
</div>

     
<%-- <img class="adminpic" src="<c:url value="/resources/images/admin.png"/>"> 
<img src="<c:url value="/resources/images/adminDeatils.jpg"/>"> 
  --%>
<!-- <table class="adminDetails">  		
    	<tr><td>Name : </td><td>ABC</td></tr>	
    	<tr><td>Phone No : </td><td>9891120249</td></tr>
    	<tr><td>Email : </td><td>admin@gmail.com</td></tr>
    	<tr><td>Date of Birth : </td><td>18/03/1996</td></tr>
    	<tr><td>Date of Joining : </td><td>28/02/2017</td></tr>
    	<tr><td>Department : </td><td>Technical</td></tr>
    	<tr><td>Designation : </td><td>Developer</td></tr>
    	<tr><td>Address : </td><td>123 Faridabad</td></tr>
    	<tr><td>State : </td><td>Haryana</td></tr>
    	<tr><td>Pin Code : </td><td>121004</td></tr> 	
    	<tr><td>Pan no : </td><td>123456</td></tr>
    	<tr><td>Salary : </td><td>30000</td></tr>	
   	</table>  		
   -->
   	<center>
<div class="img1">
<img src="<c:url value="/resources/images/img_adminPage.JPG"/>">
<img src="<c:url value="/resources/images/adminDetails.JPG"/>">
</div>
</center>


		

<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
		
