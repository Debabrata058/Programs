<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tellicaller Assignment</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="resources/bootstrap.min.admin.css" rel="stylesheet">
<link href="resources/AuthorityDashboard.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.part{
	margin-left:30px;
	margin-top:30px;
}
.heading{
	display:inline-block;
	background-color: #eaebf2;
	color: black;
	padding: 10px 15px;
	text-align: center;
}
.ta{
	margin-left:40px;
	margin-top:20px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse " style="background-color: #565466;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: white;">Dashboard</a>
        </div>
            <ul class="nav navbar-nav" style="float:right;">
                <li><a href="auth_logout" style="color: white;margin-right: 50px;">Logout</a></li>
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
    				<a class="nav-link" style="color:white;" href="TellicallerRegister.jsp">Register Tellicaller</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="AgentRegister.jsp">Register Agent</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="student_details">All Registered Students</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="Telli_Assignment.jsp">Tellicaller Assignment</a>
 			    </li>
 			    <li class="nav-item">
    				<a class="nav-link" style="color:white;" href="Telli_AssignmentDetails">Tellicaller Status</a>
 			    </li>
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="AgentStatus.jsp">Agent Status</a>
  				</li>
  				<li class="nav-item">
  					<a class = "nav-link" style="color:white;" href="authority_details">AuthorityDetails</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="agent_details">Agent Details</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="tellicaller_details">Tellicaller Details</a>
  				</li>
			</ul>

            
        </div>
        <div class="col-sm-9">

            <h4 style="color:blue;"><strong>My Dashboard</strong></a></h4>
            <hr>

            <div class="row">
              
                <div class="col-md-12"> 
                <div class="part">
                 <h4 class="heading">Students Assignment to TelliCallers</h4>
                 <form action="tellicaller_Assign">
                 <div style="background-color:#c5c6cc;width:40%;">
                 	<table class="ta">
                 		<tr>
                 		  <td style="padding-top:20px">Student SL No</td>
                 		  <td><input type="text" name="sl1_no" required style="margin-left:10px;margin-top:20px"></td>
                 		</tr>
                 		<tr>
                 		  <td style="margin-top:10px;">Tellicaller-id</td>
                 		  <td><input type="text" name="tell_id" required style="margin-left:10px;margin-top:10px;"></td>
                 		</tr>
                    </table>
                 	<input type="submit" value="Assign" style="margin-left:150px;margin-top:25px;"></br></br></br>
                 	</div>
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
</html>