<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@page import="cit.admission.Model.Agent_registerModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agent Student Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="resources/bootstrap.min.admin.css" rel="stylesheet">
<link href="resources/AuthorityDashboard.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
.personal{
	background-color: #283b4f;
	color: white;
	text-align: center;
  	display: inline-block;
  	margin-top:10px;
}
</style>
</head>
<%
Agent_registerModel agentModel = (Agent_registerModel)request.getSession().getAttribute("authAgent");
if(agentModel!=null){
%>
<body>
<nav class="navbar navbar-inverse " style="background-color: #565466;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <h4 style="padding-bottom:10px;padding-left:20px;color:white;">Welcome  <%= agentModel.getFname() %> <%=agentModel.getLname()%></h4>
        </div>
            <ul class="nav navbar-nav" style="float:right;">
                <li><a href="agent_logout" style="color: white;margin-right: 50px;">Logout</a></li>
            </ul>
    </div>
    <!--/container-->
</nav>
<!-- /Header -->
<div class ="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <h4 style="color: blue;"><strong> Tools</strong></a></h4>

            <hr>
            
            <ul class="nav flex-column" style="background-color: #273751;margin-left: -15px;margin-right: 60px;margin-top: -20px;height:770px;" >
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="StudentRegd_Agent.jsp">Register Student</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="student_details_agent">All Registered Students</a>
  				</li>
 			 </ul>

            
        </div>
        <div class="col-sm-9">

            <h4 style="color:blue;"><strong>Student Registration Page</strong></a></h4>
            <hr>

            <div class="row">
              
                <div class="col-md-12"> 
					<form action="student_registerAgent">
						<table>
							<tr>
								<td>Agent Id*</td>
								<td><input type="text" name="agent_id" required></td>
								<td style="padding-left:10px;">Date(dd/mm/yy)*</td>
								<td><input type="text" name="date" required style="margin-left:10px;"></td>
							</tr>
							<tr>
								<td class="personal">Personal Details</td>
							</tr>
							<tr>
								<td>First Name*</td>
								<td><input type="text" name="fname" placeholder="FirstName" required></td>
								<td style="padding-left:10px;">Last Name*</td>
								<td><input type="text" name="lname" placeholder="Last Name" required></td>
							</tr>
							<tr>
								<td style="margin-top:10px;">Email-ID*</td>
								<td><input type="email" name="email" required style="margin-top:10px;"></td>
								<td style="margin-top:10px;padding-left:10px;">Contact*</td>
								<td><input type="text" name="contact" required style="margin-top:10px;"></td>
							</tr>
							<tr>
							<td class="personal">Academic Details</td>
							</tr>
							<tr>
							<td style="margin-top:15px;"><b><u>10</u><sup>th</sup><u>Details</u></b></td>
							</tr>
							
							<tr>
								<td>School Name*</td>
								<td><input type="text" name="school" required></td>
								<td style="padding-left:10px;">Mark Obtained(%)*</td>
								<td><input type="text" name="mark10" required style="margin-left:5px;"></td>
							</tr>
							
							<tr>
							  <td style="padding-top: 20px;"><b><u>12</u><sup>th</sup><u>/Diploma Details</u></b></td>
							</tr>
							
							<tr>
								<td>College Name*</td>
								<td><input type="text" name="college" required></td>
								<td style="padding-left:10px;">Mark Obtained(%)*</td>
								<td><input type="text" name="mark12" required style="margin-left:5px;"></td>
							</tr>
							<tr>
							<td class="personal">Parent Details</td>
							</tr>
							
							<tr>
								<td>Father/Mother Name*</td>
								<td><input type="text" name="pfname" placeholder="First Name" required></td>
								<td style="padding-left:10px;">Last Name*</td>
								<td><input type="text" name="plname" placeholder="Last Name" required></td>
							</tr>
							<tr>
								<td style="margin-top: 10px;">Contact*</td>
								<td><input type="text" name="parent_contact" required style="margin-top:10px;"></td>
								<td style="padding-left: 10px;margin-top: 10px;">Email*</td>
								<td><input type="email" name="parent_email" style="margin-top:10px;"></td>
							</tr>
							<tr>
							<td class="personal">Address Details</td>
							</tr>
							
							<tr>
								<td>At/Street*</td>
								<td><input type="text" name="at" required></td>
								<td style="padding-left: 10px;">Post*</td>
								<td><input type="text" name="post" required></td>
							</tr>
							<tr>
								<td style="margin-top:10px;">City*</td>
								<td><input type="text" name="city" required style="margin-top:10px;"></td>
								<td style="margin-top:10px;padding-left:10px">District*</td>
								<td><input type="text" name="district" required style="margin-top:10px;"></td>
							</tr>
							<tr>
								<td style="margin-top:10px;">State*</td>
								<td><input type="text" name="state" required style="margin-top:10px;"></td>
								<td style="padding-left:10px;margin-top:10px;">Pin*</td>
								<td><input type="text" name="pin" required style="margin-top:10px;"></td>
							</tr>
					</table>
							<input type="submit" value="Register" style="margin-top:40px;margin-left:300px;">
					</form>
					
					${result}      
                </div>    
            </div>  
        </div>
       
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

</body>
<% } %>
<body>

</body>
</html>