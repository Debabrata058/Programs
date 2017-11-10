<%@ page import="com.polling.bean.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome User</title>
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%
LoginBean bean = (LoginBean)request.getSession().getAttribute("userBean");
PollBean pollBean = (PollBean)request.getAttribute("pollDetails");
String answer = (String)request.getAttribute("answer");
%>
<body>
<nav class="navbar navbar-inverse" style="background-color: #414447;border-color: transparent;">
		<div class="Container-fluid">
			<div class="navbar-header" style="color:white;">
     			 <h3 style="padding-bottom:10px;padding-left:20px;">Welcome  <%= bean.getUser_first_name() %> <%=bean.getUser_last_name() %></h3>
			</div>
			<ul class="nav navbar-nav" style="padding-left:700px;margin-top:10px;">
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
	<div style="margin-left:80px;margin-top:100px;height:370px;width:780px;padding-top:50px;background-color:#f9fafc;
	box-shadow: 1px 1px 1px 1px #888888;">	
		<div style="width: 600px; height: 45px;background-color: #667c99;box-shadow:  0px 1px #888888;padding-top:10px;padding-left:20px;
   		 margin-left:60px;font-size:17px;color:white;">
			<p>Q. <%= pollBean.getQuestion() %></p></div>
			
			<div style="margin-top:30px; margin-left:100px;"><b>Option 1 :</b>
			<h7 style="color:#1d99f2;">&nbsp<%= pollBean.getOption1() %></h7>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<b>Option 2 :</b><h7 style="color:#1d99f2;">&nbsp<%= pollBean.getOption2() %></h7>
			</div><br>
			
			<div style="margin-top:0px; margin-left:100px;"><b>Option 3 :</b>
			<h7 style="color:#1d99f2;">&nbsp<%= pollBean.getOption3() %></h7>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<b>Option 4 :</b><h7 style="color:#1d99f2;">&nbsp<%= pollBean.getOption4() %></h7>
			</div><br>
			
			<div style="display:inline-block;background-color:green;padding:5px 10px;
			height:30px;width:110px;margin-left:80px;margin-top:60px;color:white;">You Answered</div>
			<div style="color:green;margin-left:200px;margin-top:-30px;border:1px solid #42474f;
			width:200px;height:30px;padding:5px 10px;">&nbsp<%= answer %></div>

			
	</div>
	<div style="margin-top:-370px;margin-left:980px;height:490px;border: 1px solid #a1a1a1;
	padding: 10px 20px; background:#efeeed;width: 330px;
    border-radius: 2px;color:black;
    font-size:22px;">Notes :
     <hr style="border-color:#a1a1a1;width:328px;margin-left:-20px;margin-top:4px;">
	<ul style="list-style-type:circle; padding-left:7px;font-size:15px;color:black;">
		<li style="margin-top:5px;">You have already voted for this poll.</li>
		<li style="margin-top:5px;">You cannot appear for it again.</li>
		<li style="margin-top:5px;">You can only view what you answered.</li>
	</ul>	
    </div>
</body>
</html>