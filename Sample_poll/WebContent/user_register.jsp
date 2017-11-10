<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1.0" >
<title>User_register</title>
<link rel="stylesheet" href="css/Student_register.css">
</head>
<body>
<h1 style="font-size:30px;color:#4E534E;font-family:Open Sans;padding-left:40px;">JOIN OUR COMMUNITY</h1>
<p style="padding-left:40px;color:#616761;font-family:Open Sans;font-size:15px;">Sign up with us. Simply enter your details and share your idea for new future creation.</p>
<div>
<form action="StudentRegister" method="post">
<table>
<tr>
	<td class="community"><img src="images/com.jpg" alt="community logo"></td>
	<td class="table"><table>
<!--tr>
<td>User ID</td>
<td><input  type="text"   name="userid" style="width:200px;height:20px;border:2px solid cyan;border-radious:5px;" required></td>
<td></td>
<td></td>
</tr-->
<tr></tr>
<tr></tr>
<tr>
<td>First Name</td>
<td><input type="text" name="fname" required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>Last Name </td>
<td><input type="text" name="lname" required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>Town/Village</td> 
<td><input type="text" name="town" required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>District</td>
<td><input type="text" name="district" required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>E-mail</td> 
<td><input type="email" name="email" required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>Phone</td>
<td><input type="number" name="phone"  required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>Password </td>
<td><input type="password" name="password" required></td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>Confirm Password </td>
<td><input type="password" name="cpassword"  required></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Register"> &nbsp&nbsp&nbsp<a href="user_login.jsp">Member Login</a></td>
</tr>
</table></td>
</tr>
</table>
</form>
<!--script>
function myFunction{
	var pass1=document.getElementById("pass").value;
	var pass2=document.getElementById("cpass").value;
	if (pass1 != pass2){
		document.getElementById("pass").style.borderColor = "#E34234";
		document.getElementById("cpass").style.borderColor = "#34234";
		alert("Password not matched!!!");
	}
}
</script-->
</div>
</body>
</html>