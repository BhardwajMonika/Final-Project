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

</head>
<div style="color: blue" align="center">
<% String id=request.getParameter("employeeId"); %>
Welcome  Employee ID: ${usr.id} User: ${usr.email} </div>

	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">CRM - Travel Request Form</h2>
			<div class="panel panel-info">
				
				<div class="panel-body">
					<form:form action="saveLeave" cssClass="form-horizontal"
						method="post" modelAttribute="luser">

						<!-- need to associate this data with customer id -->
						<form:hidden path="l_id" />
							<div class="form-group">
							<label for="Employee Id" class="col-md-3 control-label">Employee Id</label>
							<div class="col-md-9">
								<form:input path="id" value="${id}"   cssClass="form-control" />
							</div>
						</div>

							<div class="form-group">
							<label for="fromDate" class="col-md-3 control-label">Leave Date From</label>
							<div class="col-md-9">
								<form:input type="date" path="startdate" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="toDate" class="col-md-3 control-label">Leave Date To</label>
							<div class="col-md-9">
								<form:input type="date" path="enddate" cssClass="form-control" />
							</div>
						</div>
								<div class="form-group">
							<label for="reason" class="col-md-3 control-label">Reason</label>
							<div class="col-md-9">
								<form:input type="text" path="leavetitle" cssClass="form-control" />
							</div>
						</div>	
							<%-- <div class="form-group">
							<label for="leaveApprove" class="col-md-3 control-label">Leave Approve</label>
							<div class="col-md-9">
								<form:input type="text" path="leaveApprove" cssClass="form-control" />
							</div>
						</div>	
											
						<div class="form-group">
							<label for="leaveType" class="col-md-3 control-label">Leave Type</label>
							<div class="col-md-9">
							  <select class="form-control" name="leaveType">
      							<option>Personal</option>
     							 <option>Official</option>
          					</select>
 							 </div>
							</div> --%>
						
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