<%@page import="com.polling.bean.AuthorityBean"%>
<%@page import="com.polling.bean.A_LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Admin Profile</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link href="css/bootstrap.min.admin.css" rel="stylesheet">
<link href="css/Admin.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/AdminEditProfile.css">
<script language="Javascript">
       function showconfirm(){
                var x=confirm("Are you ready to Update the file?");
                if(x==true)
                    alert("file Updated");
                else
                    alert("Edit Again ???");
            }
</script>
<style type="text/css">
.nav > li > a:hover{
 
  color:white;
  background-color: #1d1b42;

}
</style>
</head>
<%
HttpSession user_session = request.getSession();
A_LoginBean userBean = (A_LoginBean)user_session.getAttribute("userBean");
if(userBean != null){
	AuthorityBean bean = (AuthorityBean)request.getAttribute("authorityProfile");
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
                <div class="header">Edit Admin Profile</div>
                <div class="border">
                	<form action="AdminEditProfile" method="post" onsubmit="showconfirm()">
                		<table class="table table-bordered">
                			 <tbody>
     							 <tr style="height:60px;">
        							<td  style="padding-top:20px;padding-left:100px;width:200px;background-color:#F2F4EE;">* <b>First Name:</b></td>
        							<td><input type="text" class="divinput"name="fname" value= <%=bean.getFname() %>></td>
      							</tr>
      							<tr style="height:60px;">
        							<td style="padding-top:20px;padding-left:100px;width:200px;background-color:#F2F4EE;">* <b>Last Name:</b></td>
        							<td><input type="text" class="divinput" name="lname" value=<%=bean.getLname() %>></td>
      							</tr>
      							<tr style="height:60px;">
        							<td  style="padding-top:20px;padding-left:120px;width:200px;background-color:#F2F4EE;">* <b>Contact:</b></td>
        							<td><input type="number"  class="divinput" name="contact" value=<%=bean.getContact() %>></td>
      							</tr>
      							<tr style="height:60px;">
        							<td  style="padding-top:20px;padding-left:100px;width:200px;background-color:#F2F4EE;">* <b>Password:</b></td>
        							<td><input type="password"  class="divinput" name="password"></td>
      							</tr>
      							<tr style="height:60px;">
        							<td  style="padding-top:20px;padding-left:50px;width:200px;background-color:#F2F4EE;">* <b>Confirm Password:</b></td>
        							<td><input type="password"  class="divinput"  name="cpassword"></td>
      							</tr>
                		</tbody>
                		</table>
                		<div>
							<input type="submit" style="margin-left: 130px; margin-top: 20px;background-color:#79B0F4;width:100px;height:30px;" class="btn btn-info" value="Update" />
							<input type="reset" style= "margin-left: 30px; margin-top: 20px;background-color:#79B0F4;width:100px;height:30px;" class="btn btn-info" value="Reset" />
						</div>	
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