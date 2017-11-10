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
 <link rel="stylesheet" href="css/WelcomeUser.css">
</head>
<%
LoginBean bean = (LoginBean)request.getSession().getAttribute("userBean");
PollBean pollBean = (PollBean)request.getAttribute("pollDetails");
%>
<body>
<nav class="navbar navbar-inverse" style="background-color: #414447;border-color: transparent;">
		<div class="Container-fluid">
			<div class="navbar-header" style="color:white;">
     			 <h3 style="padding-bottom:10px;padding-left:20px;">Welcome  <%= bean.getUser_first_name() %> <%=bean.getUser_last_name() %></h3>
			</div>
			<ul class="nav navbar-nav" style="padding-left:700px;margin-top:10px;">
				<!--li ><a style="color:#f2f2f2;" href="PollList"><font size="3">Poll History</font></a></li-->
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
	<div class="left_style" style="background-color:#efeeed;color:black;">Greetings from the Admin :)
	<hr class="hr" style="border-color:#a1a1a1;">
	<ul style="list-style-type:circle; padding-left:7px;font-size:15px;">
		<li style="margin-top:5px;">Congratulations! You are taking part in something important.</li>
		<li style="margin-top:5px;">And you're doing it while remaining completely anonymous.</li>
		<li style="margin-top:5px;">The information gained here will be used for further studies. .</li>
		<li style="margin-top:5px;">So thank you for being a part of this.</li>
	</ul>
	</div>
	<div style="margin-left:365px;margin-top:-750px;height:520px;width:690px;padding-top:80px;
	background-color:#f9fafc;
	box-shadow: 1px 1px 1px 1px #888888;">	
	<div style="width: 600px; height: 45px;background-color: #667c99;box-shadow:  0px 1px #888888;padding-top:10px;padding-left:20px;
    margin-left:45px;font-size:17px;color:white;">
	<p>Q. <%= pollBean.getQuestion() %></p></div>
		<form action="PollAnswer" method="post" style="padding-left: 200px;padding-top:30px;">
			<input type="hidden" value="<%= bean.getEmail() %>" name="email">
			<input type="hidden" value="<%= pollBean.getPollId() %>" name="pollId">
			<input type="radio" name="option" style="margin-left:-70px;" value="<%= pollBean.getOption1() %>">&nbsp<%= pollBean.getOption1() %>
			<input type="radio" name="option" style="margin-left:155px;" value="<%= pollBean.getOption2() %>">&nbsp<%= pollBean.getOption2() %><br><br>
			<input type="radio" name="option" style="margin-left:-70px;" value="<%= pollBean.getOption3() %>">&nbsp<%= pollBean.getOption3() %>
			<input type="radio" name="option" style="margin-left:150px;" value="<%= pollBean.getOption4() %>">&nbsp<%= pollBean.getOption4() %><br><br>
			<br>
			<br>
			<br><input type="submit" value="submit" class="btn btn-success" style="margin-left:80px;">
		</form>
	</div>
	<div style="margin-top:-520px;margin-left:1080px;height:650px;border: 1px solid #a1a1a1;
	padding: 10px 20px; background:#efeeed;width: 265px;
    border-radius: 2px;color:black;
    font-size:22px;">Guidelines :
    <hr style="border-color:#a1a1a1;width:263px;margin-left:-20px;margin-top:4px;">
	<ul style="list-style-type:circle; padding-left:7px;font-size:15px;color:black;">
		<li style="margin-top:5px;">You can only select one option.</li>
		<li style="margin-top:5px;">No submission will be entertained without selection.</li>
		<li style="margin-top:5px;">Once submitted, you can't reanswer the same question.</li>
	</ul>	
	</div>
</body>
</html>