<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@page import="cit.admission.Model.Tellicaller_operationsModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TelliCaller Assignments Status</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<center><h4><u>TelliCaller Assignments</u></h4></center>
<%
	List<Tellicaller_operationsModel> assignList = (List<Tellicaller_operationsModel>)request.getAttribute("telli_assign_detail");
%>
<div class="container-fluid">
	<table class="table table-striped" style="width:1000px;margin-top:30px;">
                            <thead>
                                <tr>
                                	<th>Sl-Id</th>
                                    <th>UserId</th>
                                    <th>Tell-Id</th>
                                    <th>FirstName</th>
                                    <th>LastName</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>Alt-Contact</th>
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
                                    <th>Agree</th>
                                    <th>Date</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            for(Tellicaller_operationsModel details : assignList){
                            %>
                            <tr>
                            		<td><%=details.getSid() %></td>
                                    <td><%=details.getUid() %></td>
                                    <td><%=details.getTell_id() %></td>
                                    <td><%=details.getFirstname() %></td>
                                    <td><%=details.getLastname() %></td>
                                    <td><%=details.getEmail()%></td>
                                    <td><%=details.getContact() %></td>
                                    <td><%=details.getAlt_contact()%></td>
                                    <td><%=details.getParentfirstName()%></td>
                                    <td><%=details.getParentlastName()%></td>
                                    <td><%=details.getParentContact()%></td>
                                    <td><%=details.getParentemail()%></td>
                                    <td><%=details.getAt()%></td>
                                    <td><%=details.getPost()%></td>
                                    <td><%=details.getCity()%></td>
                                    <td><%=details.getDistrict()%></td>
                                    <td><%=details.getState() %></td>
                                    <td><%=details.getPin()%></td>
                                    <td><%=details.getAgree() %></td>
                                    <td><%=details.getDate()%></td>
                                    
                                </tr>
                            <%
                            }
                            %>
                              
                            </tbody>
                </table> 
</div>
</body>
</html>