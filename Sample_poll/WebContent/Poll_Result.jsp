<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
     <%@ page import="com.polling.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Poll Result</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.admin.css" rel="stylesheet">
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link href="css/Admin.css" rel="stylesheet">
<style>
table {
    border-collapse: collapse;
    width: 650px;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
tr:hover{background-color:#f5f5f5;}
</style>
</head>
<%

List<PollBean> ActivatedpollList = (List<PollBean>)request.getAttribute("ActivatedPollList");
List<PollBean> DeactivatedpollList = (List<PollBean>)request.getAttribute("DeactivatedPollList");

%>
<body>
<nav class="navbar navbar-inverse " style="background-color: #565466;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: white;">Dashboard</a>
        </div>
        <!--div class="navbar-collapse collapse"></div-->
            <ul class="nav navbar-nav" style="float:right;">
                <li><a href="Logout" style="color: white;margin-right: 50px;">Logout</a></li>
            </ul>
        <!--/div-->
    </div>
    <!-- /container -->
</nav>
<!-- /Header -->

<!-- Main -->
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
        <!-- /col-3 -->
        <div class="col-sm-9">

            <h4 style="color:blue;"><strong>My Dashboard</strong></h4>
            <hr>

            <div class="row">
               
                <div class="col-md-6">   
                 
                  <div style="border: 1px solid;
                             padding: 6px;
                             background: #415677;width:500px;
                             color:white;font-size:16px;
                             margin-top:-8px;margin-left:25px;
                             border-top-right-radius: 10em;">Active Polls</div>
                   <div  style="border:1px solid #415677;
                     			width:800px;height:350px;margin-top:-2px;margin-left:26px;">   
                  <table style="margin-top:35px;margin-left:60px;">
                  <tr>
                  	<th style="background-color:#c6c9ce;">Poll Id</th>
                  	<th style="background-color:#c6c9ce;">Poll Title</th>
                  </tr>
                 
                  	<%
                  	for(PollBean bean : ActivatedpollList){
                  		%>
                  		<tr class='clickable-row' data-href='PollDetails?PollId=<%= bean.getPollId() %>'>
	                  	<td><%= bean.getPollId() %></td>                
	                  	<td><%= bean.getTitle() %></td>
                  		</tr>
	                  	<%
	                  	}
	                  	%>
                  
                  </table>
                  </div>
                  <div style="border: 1px solid;
                             padding: 6px;
                             background: #415677;width:500px;
                             color:white;font-size:16px;
                             margin-top:20px;margin-left:25px;
                             border-top-right-radius: 10em;">Deactive Polls</div> 
                  <div  style="border:1px solid #415677;
                     			width:800px;height:300px;margin-top:-2px;margin-left:26px;">  
                  <table style="margin-top:35px;margin-left:60px;">
                  <tr>
                  	<th  style="background-color:#c6c9ce;">Poll Id</th>
                  	<th  style="background-color:#c6c9ce;">Poll Title</th>
                  </tr>
                  
                  	<%
                  	for(PollBean bean : DeactivatedpollList){
                  		%>
                  		<tr class='clickable-row' data-href='PollDetails?PollId=<%= bean.getPollId() %>'>
	                  	<td><%= bean.getPollId() %></td>
	                  	<td><%= bean.getTitle() %></td>
                  		</tr>
	                  	<%
	                  	}
	                  	%>
                  
                  </table>
                  </div>
                </div>    
            </div>  
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