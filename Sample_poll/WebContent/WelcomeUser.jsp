<%@ page import="java.util.List" %>
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
List<PollBean> ActivatedpollList = (List<PollBean>)request.getAttribute("ActivatedPollList");
List<PollBean> deActivatedpollList = (List<PollBean>)request.getAttribute("deActivatedPollList");
%>
<body >
<nav class="navbar navbar-inverse" style="background-color: #44494F;border-color: transparent;">
		<div class="Container-fluid">
			<div class="navbar-header" style="color:white;">
     			 <h3 style="padding-bottom:10px;padding-left:20px;">Welcome  <%= bean.getUser_first_name() %> <%=bean.getUser_last_name() %></h3>
			</div>
			<ul class="nav navbar-nav" style="padding-left:700px;margin-top:10px;">
				<!--li ><a style="color:#f2f2f2;" href="PollList"><font size="3">Poll History</font></a></li-->
				<li><a class="dropdown-toggle" data-toggle="dropdown" style="color:#f2f2f2;margin-left:30px;" href="#"><font size="4"><span class="glyphicon glyphicon-user">Profile</span></font><span class="caret"></span></a>
					<ul class="dropdown-menu dropdown-menu-left">
					 	<li><a href="UserProfile">Visit Profile</a></li>
					 	<li><a href="UserUpdationInitiate">Edit Profile</a></li>
					 	<li><a href="UserLogout">Sign Out</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="left_style">Tips for You :
	<hr class="hr">
	<ul style="list-style-type:circle; padding-left:7px;font-size:15px;">
		<li> This Page is unique for you.</li>
		<li style="margin-top:6px;">You can appear ongoing polls.</li>
		<li style="margin-top:6px;">You can appear polls only once.</li>
		<li style="margin-top:6px;">You can only vote once per poll.</li>
		<li style="margin-top:6px;">Polls you have appeared can't visible to you until it has been published.</li>
		<li style="margin-top:6px;">You can only view the polls which you appeared in published polls.</li>
	</ul>
	</div>
	<div style="margin-left:380px;margin-top:-750px;height:520px;width:870px;
	background-color:#f9fafc;
	box-shadow: 1px 1px 1px 1px #888888;">
	<div style="padding-top:10px;padding-left:30px;font-size:16px;"><h5 style="font-size:22px;"><b>Ongoing Polls :</b></h5>
	<hr class="hr2">
		
			<!--table-->
				<%
	                  	for(PollBean pollList : ActivatedpollList){
	                  		%>
	                  		<ul style="list-style-type:disc">
	                  			<li ><a href='UserPollDetails?PollId=<%= pollList.getPollId() %>'><%= pollList.getTitle()%></a></li>
	                  			<!--li--><!--%= pollList.getTitle()%--><!--/li-->
	                  		</ul>
	                  		<!--tr class='clickable-row' data-href='UserPollDetails?PollId=<!--%= pollList.getPollId() %>'-->               
		                  	<!--  td><!--%= pollList.getTitle() %></td-->
	                  		<!--/tr-->
		                  	<%
		                  	}
		                  	%>
			<!--/table-->
		<div style="padding-top:10px;font-size:16px;margin-top:90px;"><h5 style="font-size:22px;"><b>Published Polls :</b></h5>
		<hr class="hr2">
			
				<%
	                  	for(PollBean pollList : deActivatedpollList){
	                  		%>
	                  		<ul style="list-style-type:disc">
	                  			<li><a href='UserPollAnswerDetails?PollId=<%= pollList.getPollId() %>'><%= pollList.getTitle() %></a></li>
	                  		</ul>
	                  		<!--tr class='clickable-row' data-href='UserPollAnswerDetails?PollId=<!--%= pollList.getPollId() %>'-->               
		                  	<!--%= pollList.getTitle() %-->
		                  	<%
		                  	}
		                  	%>
			</div>
	</div>
	</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
</script>
</body>
</html>