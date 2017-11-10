<%@page import="com.polling.bean.AuthorityBean"%>
<%@page import="com.polling.bean.A_LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Profile</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link href="css/bootstrap.min.admin.css" rel="stylesheet">
<link href="css/Admin.css" rel="stylesheet">
</head>
<%
HttpSession user_session = request.getSession();
A_LoginBean userBean = (A_LoginBean)user_session.getAttribute("userBean");
if(userBean != null){
	AuthorityBean bean = (AuthorityBean)request.getAttribute("authorityProfile");
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

            <h4 style="color:blue;"><strong>My Dashboard</strong></a></h4>
            <hr>

            <div class="row">
               
                <div class="col-md-6">   
                   <div class="container" style="width: 400px;">
                        <div>
                            <a style="margin-left: 800px;margin-top: 200px;font-size:15px;" href="AdminProfileUpdation">EditProfile</a>     
                        </div>
                        <div style="border: 1px solid;
                             padding: 6px;
                             background: #415677;width:500px;
                             color:white;font-size:16px;
                             margin-top:20px;margin-left:-35px;
                             border-top-right-radius: 10em;">
                        Admin Profile Details </div>
                        <div style="border:1px solid #415677;
                     			width:850px;height:150px;margin-top:-2px;margin-left:-34px;">
                        <table class="table table-striped" style="width:800px;margin-left:30px;margin-top:30px;">
                            <thead>
                                <tr>
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><%= bean.getFname() %></td>
                                    <td><%= bean.getLname() %></td>
                                    <td><%= bean.getEmail() %></td>
                                    <td><%= bean.getContact() %></td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
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