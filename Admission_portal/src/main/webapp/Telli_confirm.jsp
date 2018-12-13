<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@page import ="cit.admission.Model.Tellicaller_registerModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tellicaller Confirm Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="resources/bootstrap.min.admin.css" rel="stylesheet">
<link href="resources/AuthorityDashboard.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.confirm{
	background-color: #283b4f;
	color: white;
	padding: 6px 10px;
	text-align: center;
  	display: inline-block;
  	margin-top:20px;
  	margin-left:150px;
	
}
.overform{
	background-color:#eaebf2;
	margin-top:40px;
	width:50%;
	margin-left:50px;
}
.ta{
	margin-top:20px;
	margin-left:60px;
}
</style>
</head>
<%
Tellicaller_registerModel T_Model = (Tellicaller_registerModel)request.getSession().getAttribute("authTellicaller");
if(T_Model!=null){
%>
<body>
<nav class="navbar navbar-inverse " style="background-color: #565466;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <h4 style="padding-bottom:10px;padding-left:20px;color:white;">Welcome  <%= T_Model.getFname() %> <%=T_Model.getLname()%></h4>
        </div>
            <ul class="nav navbar-nav" style="float:right;">
                <li><a href="telli_logout" style="color: white;margin-right: 50px;">Logout</a></li>
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
    				<a class="nav-link" style="color:white;" href="get_student_details">Student Details</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="Telli_confirm.jsp">Confirmation</a>
  				</li>
 			 </ul>

            
        </div>
        <div class="col-sm-9">

            <h4 style="color:blue;"><strong>My Profile</strong></a></h4>
            <hr>

            <div class="row">
              
                <div class="col-md-12">
                <div class="overform"> 
               	<div class="confirm">Make Confirmation</div>
               	<form action="telli_confirm">
               		<table class="ta">
               			<tr>
               				<td>SL NO</td>
               				<td><input type="text" name="sl_no" required></td>
               			</tr>
               			<tr>
               				<td style="margin-top:10px;">Date(dd/mm/yy)</td>
               				<td><input type="text" name="date" required style="margin-top:10px;"></td>
               			</tr>
               			<tr>
               				<td style="margin-top:10px;">Is Student Agree?(Yes/No)</td>
               				<td><input type = "text" name="agree" required style="margin-top:10px;"></td>
               			</tr>
               		</table>
               		<input type="submit" value="Confirm" style="margin-top:20px;margin-left:200px;"></br></br></br>
               	</form>
               	${result}
                </div>
                </div>    
            </div>  
        </div>
       
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

</body>
<% } %>


</html>