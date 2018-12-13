<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="cit.admission.Model.StudentRegisterModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<center><h3><u>Registered Student Details</u></h3></center>
<%
	List<StudentRegisterModel> stulist = (List<StudentRegisterModel>)request.getAttribute("stuList");
%>
<div class="container-fluid">
	<table class="table table-striped" style="width:1000px;margin-top:30px;">
                            <thead>
                                <tr>
                                	<th>UserId</th>
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>Alt-contact</th>
                                    <th>School</th>
                                    <th>Board</th>
                                    <th>PassYear</th>
                                    <th>Mark(%)</th>
                                    <th>College</th>
                                    <th>Board</th>
                                    <th>PassYear</th>
                                    <th>Mark(%)</th>
                                    <th>ParentFirstname</th>
                                    <th>ParentLastname</th>
                                    <th>Contact</th>
                                    <th>Email</th>
                                    <th>At</th>
                                    <th>Post</th>
                                    <th>City</th>
                                    <th>District</th>
                                    <th>State</th>
                                    <th>Pin</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            for(StudentRegisterModel details : stulist){
                            %>
                            <tr>
                            		<td><%=details.getUid() %></td>
                                    <td><%=details.getFname() %></td>
                                    <td><%=details.getLname() %></td>
                                    <td><%=details.getEmail() %></td>
                                    <td><%=details.getContact()%></td>
                                    <td><%=details.getAlt_contact() %></td>
                                    <td><%=details.getSchool_name() %></td>
                                    <td><%=details.getBoard() %></td>
                                    <td><%=details.getYear10() %></td>
                                    <td><%=details.getMark10() %></td>
                                    <td><%=details.getCollege() %></td>
                                    <td><%=details.getBoard12()%></td>
                                    <td><%=details.getYear12()%></td>
                                    <td><%=details.getMark12() %></td>
                                    <td><%=details.getParent_fname()%></td>
                                    <td><%=details.getParent_lname()%></td>
                                    <td><%=details.getParent_contact() %></td>
                                    <td><%=details.getParent_email()%></td>
                                    <td><%=details.getAt()%></td>
                                    <td><%=details.getPost() %></td>
                                    <td><%=details.getCity() %></td>
                                    <td><%=details.getDistrict()%></td>
                                    <td><%=details.getState() %></td>
                                    <td><%=details.getPin()%></td>
                                    
                                </tr>
                            <%
                            }
                            %>
                              
                            </tbody>
                        </table> 
</div>
</body>
</html>