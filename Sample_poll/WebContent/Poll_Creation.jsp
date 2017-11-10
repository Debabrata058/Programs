<%@page import="com.polling.bean.A_LoginBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Poll Creation</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="images/1.png" type="image/png">
<link href="css/bootstrap.min.admin.css" rel="stylesheet">
<link href="css/Admin.css" rel="stylesheet">
<script language="Javascript">
       function showconfirm(){
                var x=confirm("Are you ready to submit the file?");
                if(x==true)
                    alert("file submitted");
                else
                    alert("Edit Again ???");
            }
</script>
</head>
<%
HttpSession user_session=request.getSession();
A_LoginBean userBean=(A_LoginBean)user_session.getAttribute("userBean");
if(userBean != null){

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

            <h4 style="color:blue;"><strong>My Dashboard</strong></a></h4>
            <hr>

            <div class="row">
               
                <div class="col-md-6">  
                 <div style="border: 1px solid;
                             padding: 6px;
                             background: #415677;width:500px;
                             color:white;font-size:16px;
                             margin-top:5px;margin-left:0px;
                             border-top-right-radius: 10em;">
                       Create Poll</div>
                        <!-- div style="border:1px solid #415677;
                     			width:950px;height:570px;margin-top:-2px;margin-left:1px;"-->
                     	<hr style="border:1px solid #415677;
                     			width:950px;margin-top:-2px;margin-left:1px;"> 
                  <form action="Poll_creation" method="post" onsubmit="showconfirm()">
                    <fieldset class="scheduler-border" style="margin-top:5px;width:955px;">
						<div style="background-color: #c0cde0;
							    padding: 4px 12px;
							    display:inline-block;
							    width:140px;
    							height:27px;font-size:16px;">Poll Title</div>                    
                    	<input type="text" style="margin-left:10px;width:220px;" name="title">
                        <legend class="scheduler-border" style="font-size: 15px;">Poll Creation :</legend>
                        <div class="control-group">
                            <label class="control-label input-label" for="textbox">Enter Question :</label>
                            <div class="controls bootstrap-timepicker">
                                <!--input type="text" class="datetime" type="text" id="startTime" name="startTime" placeholder="Start Time"/-->
                                <textarea class="form-control" rows="5" id="comment" name="question"></textarea>
                            </div><br>
                             <label class="control-label input-label" for="textbox">Enter Options:</label>
                             <div>
                               <b>1:</b>  <input type="text"  type="text"  name="option1" placeholder="Option 1"/>&nbsp&nbsp
                               <b>2:</b>  <input type="text"  type="text"  name="option2" placeholder="Option 2"/>&nbsp&nbsp
                               <b>3:</b> <input type="text"  type="text"  name="option3" placeholder="Option 3"/>&nbsp&nbsp
                               <b>4:</b> <input type="text"  type="text"  name="option4" placeholder="Option 4"/>
                             </div>
                        </div>
                         <input type="submit" style= "margin-left: 400px; margin-top: 50px;" class="btn btn-info" value="Submit" />
                    </fieldset><br><br>

                    <!--fieldset class="scheduler-border" style="margin-left:15px;margin-top:5px;">
                        <legend class="scheduler-border" style="font-size: 15px;">Poll Session :</legend>
                        <div class="control-group"-->
                           <!--  <label class="control-label input-label" for="text">Creation Date / Time :</label>&nbsp&nbsp
                            <input type="datetime-local" style="height: 30px;width: 200px;" name="c_date_time"\><br><br>
                            <label class="control-label input-label" for="text">Start Date / Time :</label>&nbsp&nbsp
                            <input type="datetime-local" style="height: 30px;" name="s_date_time"/>&nbsp&nbsp&nbsp&nbsp-->
                            <!--  label class="control-label input-label" for="text">End Date / Time :</label>&nbsp&nbsp
                            <input type="date" style="height: 30px;" name="e_date_time"/><br><br>

                           
                             </div>
                    </fieldset-->
                  </form>
                  </div>
                </div>    
            </div>  
        </div>
       
    </div>
</div>
<!-- /Main -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	</body>
	<%
}
else
	response.sendRedirect("Authority_login.jsp");
	%>
</html>