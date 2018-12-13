<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cit.admission.Model.Agent_operationsModel" %>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details by Agent</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<center><h4><u>Registered Students By Agents</u></h4></center>
<%
	List<Agent_operationsModel> stuList = (List<Agent_operationsModel>)request.getAttribute("agent_Stu_Details");
%>
<div class="container-fluid">
	<table class="table table-striped" style="width:1000px;margin-top:30px;">
                            <thead>
                                <tr>
                                	<th>Agent Id</th>
                                    <th>Date</th>
                                    <th>FirstName</th>
                                    <th>LastName</th>
                                    <th>Email Id</th>
                                    <th>Contact</th>
                                    <th>School</th>
                                    <th>Mark(%)</th>
                                    <th>College</th>
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
                                    <th>Payment</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            for(Agent_operationsModel details : stuList){
                            %>
                            <tr>
                            		<td><%=details.getAgent_id() %></td>
                                    <td><%=details.getDate() %></td>
                                    <td><%=details.getFname() %></td>
                                    <td><%=details.getLname() %></td>
                                    <td><%=details.getEmail() %></td>
                                    <td><%=details.getContact()%></td>
                                    <td><%=details.getSchool() %></td>
                                    <td><%=details.getMark10() %></td>
                                    <td><%=details.getCollege() %></td>
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
                                    <td><%=details.getPayble()%></td>
                                    
                                </tr>
                            <%
                            }
                            %>
                              
                            </tbody>
                        </table> 
</div>
</body>
</html>