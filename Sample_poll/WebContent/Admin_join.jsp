<%@page import="com.polling.bean.A_LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Join Admin</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link href="css/bootstrap.min.admin.css" rel="stylesheet">
<link href="css/Admin.css" rel="stylesheet">
<script language="Javascript">
       function showconfirm(){
                var x=confirm("Are you ready for Register?");
                if(x==true)
                    alert("Registered successfully...");
                else
                    alert("Unsuccessfull...Try again!!!");
            }
</script>
</head>
<%
HttpSession user_session = request.getSession();
A_LoginBean userBean = (A_LoginBean)user_session.getAttribute("userBean");
if(userBean != null){
	%>
<body>
<nav class="navbar navbar-inverse " style="background-color: #565466;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: white;">Dashboard</a>
        </div>
            <ul class="nav navbar-nav" style="float:right;">
                <li><a href="Logout" style="color: white;margin-right: 50px;">Logout</a></li>
            </ul>
    </div>
    <!-- /container -->
</nav>
<!-- /Header -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <h4 style="color: blue;"><strong> Tools</strong></a></h4>

            <hr>

            <ul class="nav nav-stacked" style="background-color: #273751;margin-left: -15px;margin-right: 60px;margin-top: -20px;height:770px;">
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">Settings</a>
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li><a href="Poll_Creation.jsp">Create Poll</a></li>
                        <li><a href="PollResult">Poll Details</a></li>
                        <li><a href="MemberInformation">User Information</a></li>
                        <li><a href="AdminProfile">Admin Profile</a></li>
                        <li><a href="Admin_join.jsp">Join Admin</a></li>
                        
                    </ul>
                </li>
               
            </ul>

            
        </div>
        <div class="col-sm-9">

            <h4 style="color:blue;"><strong>My Dashboard</strong></h4>
            <hr>

            <div class="row">
              
                <div class="col-md-6"> 
                <div style=" border: 1px solid;
                             padding: 10px;
                             background: #415677;margin-top:-20px;width:985px;color:white;font-size:16px;">Add Admin</div>
                     <div style="border:1px solid #415677;
                     			width:983px;height:180px;margin-top:-2px;margin-left:1px;">
                     		<form action="A_register" method="post"  onsubmit="showconfirm()">	
                     		<table style="margin-left:70px;margin-top:30px;">
                     			<tr>
                     				<td style="display:inline-block;background-color:#c2c8d1;
                     				padding:5px 5px;font-size:14px;width:140px;height:25px;">First Name</td>
                     				<td><input type="text" style="width:250px;margin-left:10px;" name="fname" required></td>
                     				<td style="display:inline-block;background-color:#c2c8d1;
                     				padding:5px 5px;font-size:14px;width:140px;height:25px;margin-left:20px;">Last Name</td>
                     				<td><input type="text" style="width:250px;margin-left:10px;" name="lname" required></td>
                     			</tr>
                     			<tr>
                     				<td style="display:inline-block;background-color:#c2c8d1;
                     				padding:5px 5px;font-size:14px;width:140px;height:25px;margin-top:5px;">Email</td>
                     				<td><input type="text" style="width:250px;margin-left:10px;margin-top:5px;" name="email" required></td>
                     				<td style="display:inline-block;background-color:#c2c8d1;
                     				padding:5px 5px;font-size:14px;width:140px;height:25px;margin-left:20px;margin-top:5px;">Contact</td>
                     				<td><input type="text" style="width:250px;margin-left:10px;margin-top:5px;" name="contact" required></td>
                     			</tr>
                     			<tr>
                     				<td style="display:inline-block;background-color:#c2c8d1;
                     				padding:5px 5px;font-size:14px;width:140px;height:25px;margin-top:5px;">Password</td>
                     				<td><input type="password" style="width:250px;margin-left:10px;margin-top:5px;" name="password" required></td>
                     			</tr>
                     		</table>
                     				<input type="submit" style="width:100px;
                     				height:24px;background-color:#a2b3c4;
                     				margin-left:790px;margin-top:10px;" value="Register">
                     		</form>
                     </div>
				</div>    
            </div>  
        </div>
       
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
</body>
<%
}
else
	response.sendRedirect("Authority_login.jsp");

%>

</html>