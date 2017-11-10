
<%@page import="com.polling.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="css/bootstrap.min.admin.css" rel="stylesheet">
 <link rel="stylesheet" href="css/UserEditProfile.css">
 <script language="Javascript">
       function showconfirm(){
                var x=confirm("Are you ready to Update the file?");
                if(x==true)
                    alert("file Updated");
                else
                    alert("Edit Again ???");
            }
</script>
</head>
<%
	UserBean userProfile = (UserBean)request.getAttribute("userProfile");
%>
<body style="background-color:white;">
<nav class="navbar navbar-inverse" style="background-color: #222222;border-color: transparent;">
		<div class="Container-fluid">
			<div class="navbar-header" style="color:white;">
     			<h3 style="padding-bottom:10px;padding-left:20px;"> WELCOME <%=userProfile.getFname() %> <%= userProfile.getLname() %></h3>
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
	<div style="font-size:20px;margin-left:30px;"><b>User Profile</b>
	<p style="font-size:12px;margin-top:2px;">Please Update Your Information : </p>
	</div>
	<div style="background-color: #eaecef;width: 950px;margin-left: 230px;height: 530px;">
			<form action="UserEditProfile" method="post" style="padding-left:250px;padding-top:30px;" onsubmit="showconfirm()">
				
					<div class="form_div"><b>
					* First Name:</b>
					<input type="text" class="input_div" name="fname" value="<%= userProfile.getFname()%>" ></div><br>
					<div class="form_div"><b>
					* Last Name:</b>
					<input type="text" class="input_div" name="lname" value="<%= userProfile.getLname()%>" ></div><br>
					<div class="form_div"><b>
					* Town:</b>
					<input type="text" class="input_div3" name="town" value="<%= userProfile.getTown()%>"></div><br>
					<div class="form_div"><b>
					* District:</b>
					<input type="text" class="input_div2" name="district" value="<%= userProfile.getDistrict()%>"></div><br>
					<div class="form_div"><b>
					* Contact:</b>
					<input type="number" class="input_div2" name="phone" value="<%= userProfile.getPhone()%>"></div><br>
					<div class="form_div"><b>
					* Password:</b>
					<input type="password" class="input_div5" name="password" ></div><br>
					<div class="form_div"><b>
					* Confirm Password:</b>
					<input type="password" class="input_div4" name="cpassword" ></div>
					<!--hr style="width:500px;border-color:#8c9aaf;margin-left:-50px;"-->
				<div>
					<input type="submit" style= "margin-left: 130px; margin-top: 20px;" class="btn btn-info" value="Update" />
					<input type="reset" style= "margin-left: 30px; margin-top: 20px;" class="btn btn-info" value="Reset" />
				</div>
			</form>
			</div>
	
</body>
</html>