<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/student_registration.css" >
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script  src="JS/student_registration.js"></script>
</head>
<body>
<div class="container">
<center><h1 class="header"><u>Student Registration</u></h1></center>
<form action="studentRegister">
	<fieldset class="group">
	<div ng-app="MyApp" ng-controller='MyController'>
		<legend style="margin-left:30px;">Personal Details</legend><br>
		<table>
		<tr>
         <td><label style="margin-left:60px;" >UserId*</label></td>
         <td><input  type="text" name="uid" style="margin-left:10px;" required></td>
         <td><label style="margin-left:30px;">Email-ID*</label></td>
		 <td><input  type="email" name="email" style="margin-left:10px;" required></td>
		</tr>
		<tr>
		  <td><label style="margin-left:60px;margin-top:10px;">First Name*</label></td>
		  <td><input  type="text" name="fname" style="margin-left:10px;margin-top:10px;" placeholder="FirstName" required></td>
		  <td><label style="margin-left:30px;margin-top:10px;">Last Name*</label></td>
		  <td><input  type="text" name="lname" style="margin-left:10px;margin-top:10px;" placeholder="Last Name" required></td>
		</tr>
		<tr>
		  <td><label style="margin-left:60px;margin-top:10px;">Contact No*</label></td>
		  <td><input  type="text" name="contact" style="margin-left:10px;margin-top:10px;" required></td>
		  <td><label style="margin-left:30px;margin-top:10px;">Alternative Contact*</label></td>
		  <td><input  type="text" name="alt_contact" style="margin-left:10px;margin-top:10px;" required></td>
		</tr>
	</table>
	</div>
	</fieldset>
	
	<fieldset class="group"></br>
	<div ng-app="MyApp" ng-controller='MyController'>
	 <legend style="margin-left:30px;">Academic Details</legend>
		<label style="margin-left:70px;">10<sup>th</sup> Details</label>
		<hr style="margin-left:30px; width:100%;margin-top:-5px;">
		<table>
		<tr>
		 <td><label style="margin-left:60px;">School Name*</label></td>
		 <td><input type="text" name="school" style="margin-left:10px;" required></td>
		
		<td><label style="margin-left:30px;">Board*</label></td>
		<td><select name="board" style="margin-left:10px;width:170px;" required>
			<option>--select--</option>
			<option value="stateBoard">State Board</option>
			<option value="cbse">CBSE</option>
			<option value="icse">ICSE</option>
		</select>
		</td>
		</tr>
		<tr>
		 <td><label style="margin-left:60px;margin-top:10px;">Total Mark(%)*</label></td>
		 <td><input type="text" name="mark10" ng-model="mark_10" style="margin-left:10px;margin-top:10px;" required></td>
		 <td><label style="margin-left:30px;margin-top:10px;">Pass Year*</label></td>
		 <td><input type="text" name="year10" style="margin-left:10px;margin-top:10px;" required></td>
		</tr>	
		</table></br></br>	
		<label style="margin-left:70px;">12<sup>th</sup> / Diploma Details</label>
		<hr style="margin-left:30px; width:100%;margin-top:-5px;">
		
		<table>
		 <tr>
		   <td><label style="margin-left:60px;">School/College Name*</label></td>
		   <td><input type="text" name="school12" style="margin-left:10px;" required></td>
		   <td><label style="margin-left:30px;">Board*</label></td>
		   <td><select name="board12"  style="margin-left:10px;width:170px;" required>
			     <option>--select--</option>
			     <option value="stateBoard">State Board</option>
			     <option value="cbse">CBSE</option>
			     <option value="icse">ICSE</option>
		      </select></td>
		 </tr>
		 </table>
		   <div ng-show="alert===true" class="alert alert-warning inner" role="alert" style="margin-left:30px;">
		   <table>
		   	<tr>
			  <td><label style="margin-left:65px;">Total Mark(%)*</label></td>
			  <td><input type="text" name="mark12" ng-model="mark_12" style="margin-left:10px;" required></td>
			  <td><label style="margin-left:20px;">Pass Year*</label></td>
			  <td><input type="text" name="year12" required></td>
			</tr>
		  </table>
		  </div>

		</div>	
	</fieldset>
	
	<fieldset class="group">
		<legend style="margin-left:30px;">ParentDetails</legend><br>
		<table>
			<tr>
				<td><label style="margin-left:60px;">Father/Mother Name*</label></td>
				<td><input type="text" name="pfname" placeholder="First Name" style="margin-left:10px;" required></td>
				<td><label style="margin-left:30px;">Lname*</label></td>
				<td><input type="text" name="plname" placeholder="Last Name" style="margin-left:10px;" required></td>
			</tr>
			<tr>
				<td><label style="margin-left:60px;margin-top:10px;">Contact Mobile_no*</label></td>
			    <td><input type="text" name="parent_contact" style="margin-left:10px;margin-top:10px;" required></td>
			    <td><label style="margin-left:30px;margin-top:10px;" >Email</label></td>
			    <td><input type="mail" name="parent_email" style="margin-left:10px;margin-top:10px;"></td>
			</tr>
		</table>
	</fieldset><br>
	
	<fieldset class="group"></br>
		<legend  style="margin-left:30px;">Address Details</legend></br>
		<table>
			<tr>
				<td><label style="margin-left:60px;">At/Street*</label></td>
				<td><input type="text" name="at" style="margin-left:10px;" required></td>
				<td><label style="margin-left:30px;">Post*</label></td>
				<td><input type="text" name="post" style="margin-left:10px;" required></td>
			</tr>
			<tr>
				<td><label style="margin-left:60px;margin-top:10px;">City*</label></td>
				<td><input type="text" name="city" style="margin-left:10px;margin-top:10px;" required></td>
				<td><label style="margin-left:30px;margin-top:10px;">District*</label></td>
				<td><input type="text" name="district" style="margin-left:10px;margin-top:10px;" requird></td>
			</tr>
			<tr>
				<td><label style="margin-left:60px;margin-top:10px;">State*</label></td>
				<td><input type="text" name="state" style="margin-left:10px;margin-top:10px;" required></td>
				<td><label style="margin-left:30px;margin-top:10px;">Pin*</label></td>
				<td><input type="tetx" name="pin" style="margin-left:10px;margin-top:10px;" required></td>
			</tr>
		</table>
	</fieldset><br>
	<input type="submit" value="Register" ng-click="show Alert()" style="margin-left:200px;margin-top:10px;"/></br></br>
</form>
</div>
</body>
</html>