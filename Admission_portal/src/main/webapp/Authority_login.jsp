<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator LogIn</title>
<style>
body {
background-color:#2e3e59;

}
.form {
padding:30px;
background-color:#57709b;
height: 50%;
margin-top:40px;

}
.au {
font-size: 25px;
color:red;
margin-bottom:10px;
}
.div {
width: 20%;
height: 70%;
padding:50px;

text-align:center;
margin-top:210px;
background-color:#ccd4e2;

}
b {
margin-bottom: 5px;
}
</style>
</head>
<body>
<center>
<div class="div">
<b class="au"><u> AUTHORITY LOGIN</u></b>

<div class="form" align="center">

<form action="auth_login">
<b>UserId</b>

<input style="margin-top:10px;" type="text" name="uid"></br></br>
<b>Password</b>
<br>
<br>
<input class="pass" type = "password" name="password"></br></br>
<input class="submit" type="submit" value="LogIn">

</form>
</div>
</div>
</center>
</body>
</html>