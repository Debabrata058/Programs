<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tellicaller LogIn</title>
<style>
body {
background-color:#cecccc;

}
.form {
padding:30px;
height: 50%;
margin-top:40px;

}
.au {
font-size: 23px;
color:blue;
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
<b class="au"><u>TELLICALLER LOGIN</u></b>

<div class="form" align="center">

<form action="tellicaller_login">
<b>TelliCaller Id</b>

<input type="text" name="tell_id" style="margin-top:10px;"></br></br>
<b>Password</b>
<input type = "password" name="password" style="margin-top:10px;"></br></br>
<input type="submit" value="LogIn">
</form>
</div>
</div>
</center>
</body>
</html>