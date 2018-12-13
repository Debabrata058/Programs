<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administratives LogIn</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse " style="background-color: #071535;border: none;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp" style="color: white;">Admision Portal</a>
        </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp" style="color: white;margin-right:50px;">Home</a></li>
                <li><a href="https://cutm.ac.in/" style="color: white;margin-right:50px;">About</a></li>
            </ul>
    </div>
</nav>
<!-- nav end -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
			<img src="resources/admin1.png" width="600px" height="600px" alt="adminLogo">
		</div>
	<div class="col-sm-6">
			<h3 style="margin-top:150px;">Your Position? I am </h3> 
			<a style="background-color: #f44336;color: white;padding: 14px 25px;text-align: center;margin-top:30px;
  			display: inline-block;" href="Authority_login.jsp">Administrator</a>
  			<a style="background-color: blue;color: white;padding: 14px 35px;text-align: center;margin-left:40px;
  			display: inline-block;" href="Agent_login.jsp">Agent</a>
  			<a style="background-color: #2c3f6b;color: white;padding: 14px 25px;text-align: center;margin-left:40px;
  			display: inline-block;" href="Tellicaller_login.jsp">TelliCaller</a>
  	</div>
	</div>
</div>
</body>
</html>