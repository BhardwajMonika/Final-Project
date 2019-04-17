<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Spring MVC 5 - form handling | Java Guides</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/style1.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<style type="text/css">
body{
	height:100%;
	width:100%;
	background-repeat:no repeat;
	background-size:cover;
	}
h2{
	color:white;
	margin-top:50px;
	text-align:center;
	}
.panel-body{
	color:white;
	margin-top:100px;
	}
.btn{
	color:white;
	background-color:black;
	height:90px;
	width:100px;
	border-radius:7px;
	}	
</style>
</head>
<body  background="<c:url value="/resources/images/LEAVE.jpeg"/>">
<div style="color: blue" align="center">

 </div>

	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">ERP - Leave Request Form</h2>
			<div class="panel panel-info">
				
				<div class="panel-body">
					<form:form action="saveLeave" cssClass="form-horizontal"
						method="post" modelAttribute="luser">

						<!-- need to associate this data with customer id -->
						<form:hidden path="lid" />
							<div class="form-group">
							<label for="Employee Id" class="col-md-3 control-label">Employee Id</label>
							<div class="col-md-9">
								<form:input path="eid" value='<%=request.getParameter("employeeId") %>' cssClass="form-control" />
								
							</div>
						</div>

							<div class="form-group">
							<label for="startdate" class="col-md-3 control-label">Leave From</label>
							<div class="col-md-9">
								<form:input type="date" path="startdate" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="enddate" class="col-md-3 control-label">Leave To</label>
							<div class="col-md-9">
								<form:input type="date" path="enddate" cssClass="form-control" />
							</div>
						</div>
														
						<div class="form-group">
							<label for="leavetitle" class="col-md-3 control-label">LeaveType</label>
							<div class="col-md-9">
					   <form:select class="form-control" path="leavetitle">
      							<option>SL</option>
     							 <option>CL</option>
          					</form:select> 	
          				
 							 </div>
							</div>
						
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Submit</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>