<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.polling.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="shortcut icon" href="images/1.png" type="image/png">
 <link href="css/bootstrap.min.admin.css" rel="stylesheet">
<link href="css/PollDetails.css" rel="stylesheet">
<link href="css/Admin.css" rel="stylesheet">
</head>
<%
PollBean poll = (PollBean)request.getAttribute("pollDetails");
float[] percentage = (float[])request.getAttribute("percentage");
%>
<body>
<!-- header -->
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

            <h4 style="color:blue;"><strong>My Dashboard</strong></a></h4>
            <hr>

          <div class="row">
          <div class="col-md-6"> 
             <div style=" border: 1px solid;
                             padding: 10px;
                             background: #415677;width:500px;color:white;font-size:16px;border-top-right-radius: 10em;">Poll Result Details</div>   
			<div  style="border:1px solid #415677;
                     			width:990px;height:550px;margin-top:-2px;margin-left:1px;">
			 <!-- hr style="border-color:#415677;width:983px;margin-top:-2px;margin-left:1px;"-->
<table style="margin-top:20px;">
<tbody>
		<tr>
		<td class="rowstyle">Poll Id </td>
		<td></td>
		<td></td>
		<td></td>
		<td class="rowvalue"><%= poll.getPollId() %></td>
		<td></td>
		<td class="rowstyle">Title </td>
		<td></td>
		<td class="rowvalue"><%= poll.getTitle() %></td>
		<td></td>
		<td class="rowstyle">Status </td>
		<td></td>
		<td class="rowvalue"><%= poll.getStatus() %></td>
		</tr>
		</tbody>
		</table>
		
		
		<div class="Qstyle">Q.
		<%= poll.getQuestion() %></div>
		
		<!--  div class="result"><br-->
		
		<div class="opt1"><b>option 1 :
		<%= poll.getOption1() %></b>
		
			<div class="progress" style="margin-top:5px;border-style: inset;">
			    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:<%= percentage[0]%>%">
			      <%= percentage[0]%>%
			    </div>
		    </div>
		    </div>
	
		<div class="opt1"><b>option 2 :
		<%= poll.getOption2() %></b>
		
			<div class="progress" style="margin-top:5px;border-style: inset;">
			    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:<%= percentage[1]%>%">
			      <%= percentage[1]%>%
			    </div>
		    </div>
		    </div>
		
		
		<div class="opt1"><b>option 3 :
		<%= poll.getOption3() %></b>
			<div class="progress" style="margin-top:5px;border-style: inset;">
			    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:<%= percentage[2]%>%">
			      <%= percentage[2]%>%
			    </div>
		    </div>
		  </div>
		
		<div class="opt1"><b>option 4 :
		<%= poll.getOption4() %></b>
			<div class="progress" style="margin-top:5px;border-style: inset;">
			    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:<%= percentage[3]%>%">
			      <%= percentage[3]%>%
			    </div>
		    </div>
		</div>
		
<button type="submit" class="btn btn-success" style="margin-left:150px;margin-top:50px" onclick="location.href='PollActivation?pollId=<%= poll.getPollId() %>';">Activate Poll</button>
<button type="submit" class="btn btn-warning" style="margin-top:50px;"onclick="location.href='PollDeactivation?pollId=<%= poll.getPollId() %>';">Deactivate Poll</button>
<button type="submit" class="btn btn-danger" style="margin-top:50px;" onclick="location.href='PollDeletion?pollId=<%= poll.getPollId() %>';">Delete Poll</button>

</div>    
    </div>  
    </div>
       
    </div>
</div>
</body>
</html>