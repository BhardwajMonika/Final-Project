<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>erp</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/style1.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body background="<c:url value="/resources/images/back2.jpg"/>"/>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>Employee Data System</h2>
			<hr color="pink" size="3" />
			<hr color="pink" size="3" />
<%-- <img src="<c:url value="/resources/images/niit.png"/>"/> --%>
			<input type="button" value="Add Employee"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" />
				<br/><br/>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Employees List</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>State</th>
							<th>Date of Birth</th>
							<th>Date of Joining</th>
							<th>Department</th>
							<th>Designation</th>
							<th>Address</th>
							<th>Pin Code</th>
							<th>Phone No.</th>
							<th>Pan no.</th>
							<th>Salary</th>
							
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempEmp" items="${Employees}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/employee/updateForm">
								<c:param name="EmployeeId" value="${tempEmp.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/employee/delete">
								<c:param name="EmployeeId" value="${tempEmp.id}" />
							</c:url>

							<tr bgcolor="pink">
								<td>${tempEmp.firstname}</td>
					<td>${tempEmp.lastname}</td>
					<td>${tempEmp.email}</td>
					<td>${tempEmp.state}</td>
					<td>${tempEmp.dob}</td>
					<td>${tempEmp.doj}</td>
					<td>${tempEmp.department}</td>
					<td>${tempEmp.designation}</td>
					<td>${tempEmp.address}</td>
					<td>${tempEmp.pincode}</td>
					<td>${tempEmp.phn_no}</td>
					<td>${tempEmp.pan_no}</td>
					<td>${tempEmp.salary}</td>
								
					

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>

</html>
