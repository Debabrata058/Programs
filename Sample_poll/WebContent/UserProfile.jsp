<%@page import="com.polling.bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/UserProfile.css">
</head>
<%
LoginBean userbean = (LoginBean)session.getAttribute("userBean");// retriving session value from login file.
if(userbean != null)
{
	UserBean user_bean = (UserBean)request.getAttribute("userProfile");// fetching all data from User Profile.
%>

<body  style="background-color:#eaecef;">
<nav class="navbar navbar-inverse" style="background-color: #222222;border-color: transparent;">
		<div class="Container-fluid">
			<div class="navbar-header" style="color:white;">
     			 <h3 style="padding-bottom:10px;padding-left:20px;">Welcome  <%= user_bean.getFname() %> <%=user_bean.getLname() %></h3>
			</div>
			<ul class="nav navbar-nav" style="padding-left:700px;margin-top:10px;">
				<!--li ><a style="color:#f2f2f2;" href="#"><font size="3">Poll History</font></a></li-->
				<li><a class="dropdown-toggle" data-toggle="dropdown" style="color:#f2f2f2;margin-left:30px;" href="#"><font size="3"><span class="glyphicon glyphicon-user">Profile</span></font><span class="caret"></span></a>
					<ul class="dropdown-menu dropdown-menu-left">
					 	<li><a href="UserProfile">Visit Profile</a></li>
					 	<li><a href="UserUpdationInitiate">Edit Profile</a></li>
					 	<li><a href="UserLogout">Sign Out</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="div1">
	<div class="container" style="width:auto;">
  <div class="panel panel-default" style="background-color:#dadee5;width:850px;margin-left:10px;margin-top:20px;height:60px;">
    <div class="panel-body" style="padding-left:20px;padding-top:20px;font-size:18px;"><b>Your Profile Details</b></div>
  </div>
</div>
<div style="margin-left:60px;margin-top:20px;"><h4 style="font-size:15px;"><b>Personal Information:</b></h4></div>

		<div style="margin-left:150px;margin-top:20px;font-size:15px;">First Name:
		<h7 style="margin-left:50px;color:#1d99f2;"><%=user_bean.getFname() %></h7></div>
	
		<div style="margin-left:150px;margin-top:10px;font-size:15px;">Last Name:
		<h7 style="margin-left:50px;color:#1d99f2;"><%=user_bean.getLname()%></h7></div>

		<div style="margin-left:150px;margin-top:10px;font-size:15px;">Town:
		<h7 style="margin-left:50px;color:#1d99f2;margin-left:85px;"><%=user_bean.getTown()%></h7></div>
	
		<div style="margin-left:150px;margin-top:10px;font-size:15px;">District:
		<h7 style="margin-left:50px;color:#1d99f2;margin-left:75px;"><%=user_bean.getDistrict()%></h7></div>
	
<div style="margin-left:60px;margin-top:20px;"><h4 style="font-size:15px;"><b>Contact Information:</b></h4></div>
		<div style="margin-left:150px;margin-top:10px;font-size:15px;">Email:
		<h7 style="margin-left:50px;color:#1d99f2;margin-left:80px;"><%=user_bean.getEmail()%></h7></div>
		
		<div style="margin-left:150px;margin-top:10px;font-size:15px;">Phone:
		<h7 style="margin-left:50px;color:#1d99f2;margin-left:73px;"><%=user_bean.getPhone()%></h7></div>
	
</div>
<%	
}
%>
</body>
</html>