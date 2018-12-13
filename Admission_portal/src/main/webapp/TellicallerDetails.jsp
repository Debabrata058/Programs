<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="cit.admission.Model.Tellicaller_registerModel" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TelliCaller Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="resources/bootstrap.min.admin.css" rel="stylesheet">
<link href="resources/AuthorityDashboard.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse " style="background-color: #565466;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: white;">Dashboard</a>
        </div>
            <ul class="nav navbar-nav" style="float:right;">
                <li><a href="auth_logout" style="color: white;margin-right: 50px;">Logout</a></li>
            </ul>
    </div>
    <!--/container-->
</nav>
<!-- /Header -->
<div class ="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <h4 style="color: blue;"><strong> Tools</strong></a></h4>

            <hr>

            <ul class="nav flex-column" style="background-color: #273751;margin-left: -15px;margin-right: 60px;margin-top: -20px;height:770px;" >
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="TellicallerRegister.jsp">Register Tellicaller</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="AgentRegister.jsp">Register Agent</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="student_details">All Registered Students</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="Telli_Assignment.jsp">Tellicaller Assignment</a>
 			    </li>
 			    <li class="nav-item">
    				<a class="nav-link" style="color:white;" href="Telli_AssignmentDetails">Tellicaller Status</a>
 			    </li>
  				<li class="nav-item">
    				<a class="nav-link" style="color:white;" href="AgentStatus.jsp">Agent Status</a>
  				</li>
  				<li class="nav-item">
  					<a class = "nav-link" style="color:white;" href="authority_details">AuthorityDetails</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="agent_details">Agent Details</a>
  				</li>
  				<li class="nav-item">
  					<a class="nav-link" style="color:white;" href="tellicaller_details">Tellicaller Details</a>
  				</li>
			</ul>

            
        </div>
        <div class="col-sm-9">

            <h4 style="color:blue;"><strong>My Dashboard</strong></a></h4>
            <hr>

            <div class="row">
              
                <div class="col-md-12"> 
                  <%
	List<Tellicaller_registerModel> telli_list = (List<Tellicaller_registerModel>)request.getAttribute("TelliList");
	
	%>
		   



				<table class="table table-striped" style="width:800px;margin-left:70px;margin-top:30px;">
                            <thead>
                                <tr>
                                	<th>Telli-Id</th>
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>University</th>
                                    <th>Designation</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            for(Tellicaller_registerModel details : telli_list){
                            %>
                            <tr>
                            		<td><%=details.getTell_id() %></td>
                                    <td><%=details.getFname() %></td>
                                    <td><%=details.getLname() %></td>
                                    <td><%=details.getUniversity() %></td>
                                    <td><%=details.getDesignation() %></td>
                                    <td><%=details.getEmail() %></td>
                                    <td><%=details.getContact()%></td>
                                </tr>
                            <%
                            }
                            %>
                              
                            </tbody>
                        </table>       
                </div>    
            </div>  
        </div>
       
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

</body>
</html>