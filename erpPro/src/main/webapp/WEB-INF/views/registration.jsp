<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">


html,body{/* 
background-image:url("hr-management.jpg"); */
background-size: cover;
background-repeat: no-repeat;
background-attachment:fixed;
/* height: 100%; */
height:80%;
font-family: 'Numans', sans-serif;
}


/* body {
	font-family: 'Open Sans', sans-serif;
    width: 100%;
    height:100%;
    text-transform: uppercase;
    background-repeat: no repeat;
    background-size:cover;
   
    
} */
.main-agileits {
    width: 640px;
    margin:40px 30px 20px 30px;
   height:auto;
	}
	
h1 {
	font-family: 'Oswald', sans-serif;
    text-align: center;
    font-size: 36px;
    font-weight: bold;
    margin: 50px 0;
    color: #ffffff;
    letter-spacing: 4px;
    word-spacing: 4px;
}

#name1,#name2{
	width:15%;
}
form {
    margin:40px 40px 40px 20px;
    width: 650px;
    border:2px solid black;
    background-color:black;
    opacity:0.7;
}
.form-sub-w3{
	position:relative;
	margin-left:30px;
}
 input[type="text"],input[type="password"] {
    outline: none;
    font-size: 15px;
    color: white;
    padding: 15px 40px 10px 40px;
    width:60%;
    border: none;
    border-bottom: 1px solid #DCCBCF;
    margin:0 30px 25px;
    background: transparent;
	font-family: 'Open Sans', sans-serif;
}

select{
	 outline: none;
    font-size: 15px;
    color: green;
    padding: 15px 40px 10px 40px;
    width:30%;
    border: none;
    border-bottom: 1px solid #DCCBCF;
    margin:0 30px 25px;
    background: transparent;
	font-family: 'Open Sans', sans-serif;
	}

[type="date"] {
    outline: none;
    font-size: 15px;
    color: #ffffff;
    padding: 15px 40px 10px 40px;
    width:70%;
    border: none;
    border-bottom: 1px solid #DCCBCF;
    margin:0 30px 25px;
    background: transparent;
	font-family: 'Open Sans', sans-serif;
}

input[type="submit"]:hover{
    background-color:lime;
	color:black;
	transition: 0.3s all;
   	
}


label{
        color:white;
    font-size: 12px;
    margin-left:35px;
    margin-top:30px;
    display: inline-block;
}

.form-w3-agile{
	margin-left:200px;}
	
#submitBtn{
	margin-top:30px;
	width:80px;
	height:38px;
	color:white;
	background-color:green;
	border:2px solid green;
	border-radius:7px;
	text-align:center;
	}	

</style>


<title>Register an employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="formvalid.css"/>">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
	
	

<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<!-- //web font -->
<script language="JavaScript" type="text/JavaScript">

            function validate()
            {
            var FName=document.frmreg.firstname.value;
            var LName=document.frmreg.lastname.value;
            var Address=document.frmreg.address.value;
            var Email=document.frmreg.email.value;
            var Designation=document.frmreg.designation.value;
            var Department=document.frmreg.department.value;
            var Password=document.frmreg.Password.value;
            var Phone=document.frmreg.phn_no.value;
            var Salary=document.frmreg.salary.value;
            var state=document.frmreg.state.value;
            var pan_no=document.frmreg.pan_no.value;
            var pincode=document.frmreg.pincode.value;


            if(FName.length==0)
            {
            alert("FName Field Cannot be Left Blank");
            document.frmreg.firstname.focus();
            return false;
            }
            else if(LName.length==0)
            {
            alert("LName Field Cannot be Left Blank");
            document.frmreg.lastname.focus();
            return false;
            }

            else if(Address.length==0)
            {
            alert("Address Field cannot be left blank");
            document.frmreg.address.focus();
            return false;
            }

            else if( Email.length==0)
            {
            alert("Email Field Cannot be Left Blank");
            document.frmreg.email.focus();
            return false;
            }

            else if(Designation.length==0)
            {
            alert("designation Field Cannot be Left Blank");
            document.frmreg.designation.focus();
            return false;
            }

            else if(pincode.length==0)
            {
            alert("pincode Field Cannot be Left Blank");
            document.frmreg.pincode.focus();
            return false;
            }

            else if(Department.length==0)
            {
            alert("department Field Cannot be Left Blank");
            document.frmreg.department.focus();
            return false;
            }
            else if(Salary.length==0)
            {
            alert("salary Field Cannot be Left Blank");
            document.frmreg.salary.focus();
            return false;
            }

            else if(pan_no.length==0)
            {
            alert("pan_no Field Cannot be Left Blank");
            document.frmreg.pan_no.focus();
            return false;
            }
          
            else if(Password.length==0)
            {
            alert("Password Field Cannot be Left Blank");
            document.frmreg.Password.focus();
            return false;
            }
           
            
            else if(Password.length < 6 || Password.length > 10)
            {
            alert("Password length Should be \n Between 6 to 10 characters");
            document.frmreg.Password.focus();
            return false;
            }
          
            else if(Email.indexOf(".")==-1 || Email.indexOf("@")==-1)
            {
            alert("Please Enter a Valid Email Address");
            document.frmreg.email.focus();
            return false;
            }
            else if(Email.indexOf(".") < Email.indexOf("@"))
            {
            alert("Please Enter a Valid Email Address");
            document.frmreg.email.focus();
            return false;
            }
            
            else if(isNaN(Phone))
            {
            alert("Mobile Number Field Should Contain Numeric Values");
            document.frmreg.phn_no.focus();
            return false;
            }
           
            else
            {
            alert("Updating User Details...");
            return true;
            }
            }
        </script>
</head>
<p id="head"></p>
<body background="<c:url value="/resources/images/registration.jpg"/>"/>


<%-- <c:url var="leavelink" value="/leave/leaveForm">
	<c:param name="employeeId" value="${usr.id}" />
</c:url>
 --%>



<%-- <c:url var="submitlink" value="adminPage">
	<c:param name="employeeId" value="${usr.id}" />
</c:url> --%>
<div class="main-agileits">
<!--form-stars-here-->
	<div class="form-w3-agile">
	
	<h2 class="text-center">Employee register</h2>
	
	
	
  	<form action="/erpPro/employee/saveEmployee" method="post"  modelAttribute="employee" name="frmreg" onSubmit="return validate();">					
  	<table>	
    	<tr>
			<td><label>Name</label></td>
			</tr>
			<tr>
			<td><input id="firstname" name="firstname" placeholder="First name"  tabindex="1" type="text"></td>
			<td><input id="lastname" name="lastname" placeholder="Last name"  tabindex="1" type="text"></td>
			<p id="p1"></p>
			</tr>
			<tr>
			<td><label>Email</label></td>
			<td><label>Mobile phone</label></td>
			</tr>
			<tr>
			<td><input id="email" name="email" placeholder="example@domain.com"  type="text"></td>
			<p id="p3"></p>
			<td><input id="phn_no" name="phn_no" placeholder="phone number"  type="text"></td>
			</tr>
			<tr>
			<td><label>Designation</label></td>
			<td><label>Department</label><br></td>
			</tr>
			<tr>
			<td><input id="designation" name="designation" placeholder="designation"  type="text"></td>
			<td><input id="department" name="department" placeholder="department"  type="text"> </td>
			</tr>
			<tr>
			<td><label>Date of Birth</label></td>
			<td><label>Date of Joining</label></td>
			</tr>
			<tr>
			<td><input id="DOB" name="dob"  tabindex="1" type="date"></td>
			<td><input id="DOJ" name="doj"  tabindex="1" type="date"></td>
			</tr>	
			<tr>
			<td><label>Salary</label></td>
			<td><label>Pan no</label></td>
			</tr>	
			<tr>
			<td><input id="salary" name="salary" placeholder="salary"  tabindex="1" type="text"></td>
			<td><input id="pan_no" name="pan_no" placeholder="PAN No."  tabindex="1" type="text"></td>
			</tr>
			<tr>
			<td><label>Address</label></td>
			<td><input id="add" name="address" placeholder="Address"  tabindex="1" type="text"></td>
			</tr>
			<tr>
			<td><label>State</label>
				<select class="select-style" name="state">
				<option id="optiontxt" value="Haryana">Haryana</option>
				<option id="optiontxt" value="Punjab">Punjab</option>
				<option id="optiontxt" value="Uttar Pradesh">Uttar Pradesh</option>
				<option id="optiontxt" value="Rajasthan">Rajasthan</option>
				<option id="optiontxt" value="Gujarat">Gujarat</option>
				</select></td>
				<td><label>Pin Code</label></td>
			</tr>
			<tr>
			<td></td>
			<td><input id="pincode" name="pincode" placeholder="Pincode"  tabindex="1" type="text"></td>
			</tr>
			<tr>
			<td><label>Password</label></td>
			<p id="p2"></p>
			</tr>
			<tr>
			<td><input type="password" name="password" placeholder="Password"  /></td>
			</tr>
			</table>
		<center>
			<a href="adminPage"> <input type="submit" value="submit"></a>
			
		</center>
	</form>
</div>

</div>


<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>




</body>
</html>