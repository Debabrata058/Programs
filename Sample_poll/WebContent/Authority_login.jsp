<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1.0" >
<title>Authority Login</title>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="images/1.png" type="image/png">
<script type="text/javascript">
history.pushState(null, null, document.URL);
window.addEventListener('popstate', function () {
    history.pushState(null, null, document.URL);
});
</script>
</head>
<%
String error = "";
if(null != request.getParameter("error"))
	error = "error";
%>
<body>
 <nav class="navbar" style="background-color: white; box-shadow:5px 80px 80px black;height:70px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" style="color:black;margin-left: 50px;margin-top: 10px;" href="Front.html">Polling System</a>
    </div>
    <ul class="nav navbar-nav" style="padding-left:800px;margin-top:10px;">
      <li><a href="MyFront.html">Home</a></li>
      <li><a  style="margin-left:30px;" href="About.html">About</a></li>
      <!--li><a href="#">Sign In / Sign Up</a></li-->
    </ul>
  </div>
</nav>
<div class="cotn_principal" style="margin-top: -20px;">
<div class="cont_centrar">

  <div class="cont_login">
<div class="cont_info_log_sign_up">
      <div class="col_md_login" style="margin-left:150px;">
<div class="cont_ba_opcitiy">      
  <h2>LOGIN</h2>  
  <p>Authentication Required!!!</p> 
  <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
  </div>
  </div>

       </div>

    
    <div class="cont_back_info">
       <div class="cont_img_back_grey">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
       
    </div>
<div class="cont_forms" style="margin-left:150px;">
    <div class="cont_img_back_">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
 <div class="cont_form_login" style="margin-left:50px;">
    <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
    <h2>LOGIN</h2><br><br>
   <form action="Auth_login" method="post">
   <input type="hidden" id="error" value="<%= error%>">
    <input type="text" style="height: 45px; border: none;width:200px;" name="email" placeholder="Email" required/><br><br>
    <input type="password" style="height: 45px; border: none;width:200px;" name="password" placeholder="Password" required/><br><br>
    <button class="btn_login" onclick="cambiar_login()">LOGIN</button><br><br>
    <a style="margin-left: 100px;" href="#">Forgot Password ?</a>
    </form>
  </div>
  
   <div class="cont_form_sign_up">
<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
     <h2>SIGN UP</h2><br>
<form action="A_register" method="post">
<input type="text" style="height: 40px; border: none;width:200px;" name="fname" placeholder="First Name" required/><br><br>
<input type="text" style="height: 40px; border: none;width:200px;" name="lname" placeholder="Last Name" required/><br><br>
<input type="text" style="height: 40px; border: none;width:200px;" name="email" placeholder="Email" required/><br><br>
<input type="number" style="height: 40px; border: none;width:200px;" name="contact" placeholder="Contact" required/><br><br>
<input type="password"  style="height: 40px; border: none;width:200px;" name= "password" placeholder="Password" required/><br><br>
<input type="password"  style="height: 40px; border: none;width:200px;" name="cpassword" placeholder="Confirm Password" required/><br><br>
<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
</form>

  </div>

    </div>
    
  </div>
 </div>
</div>
  
    <script  src="js/login.js"></script>
    <script type="text/javascript">
    	var error = document.getElementById("error").value;
    	if(error !== ""){
    		alert("You have entered wrong username or password.");
    	}
    </script>

</body>
</html>