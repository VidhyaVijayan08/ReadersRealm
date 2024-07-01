<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@page import="com.chainsys.readersrealm.model.User" %>
    <%@ page import="java.util.ArrayList, com.chainsys.readersrealm.dao.UserImpl" %>
    <%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
<style>

	body{
		background-image: url("backgrounds.webp");
		background-repeat: no-repeat;
		background-size: cover;
		margin:0px;
	}

	main{
			background-image:url("bookslibrary.webp");
			background-size: cover;
			background-repeat: no-repeat;
			height:800px;
	}
		
    table {
    	background: antiquewhite;
    	border-color:none!Important;
        border-collapse: collapse;
        width: 73%;
        margin-top: 200px;
        margin-left: 179px;
    }

    td {
        border: 2px solid #ddd;
        padding: 8px;
        margin-top: 500px;
    }
	
	.search-button{
		margin : 20px 0px;
	}
	
	.button-container{
		position: absolute;
	    top: 19%;
	    right: 14%;
	}
</style>
</head>
<body>

<table>
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Type</th>
    <th>PhoneNumber</th>
    <th>Location</th>
    <th>Status</th>
    <th colspan="2">Update</th>
</tr>
<% 
	List<User> user =LibraryImpl.getFindLibrarian(null);
if (user != null && !user.isEmpty()) {
    for (User obj : user) {
%>
<tr>
    <td><%= obj.getName() %></td>
    <td><%= obj.getEmailId() %></td>
    <td><%= obj.getType() %></td>
    <td><%= obj.getPhoneNumber() %></td>
    <td><%= obj.getLocation() %></td>
    <td><%= obj.getGetStatus() %></td>
    <% 
    if (obj.getGetStatus()==1){
    %>
    <td>
       <form action="DeleteServlet" method="get">
            <input type="hidden" class="delete-button" value=<%=obj.getId()%> name="id">
            <input type="submit" class="delete-button" value="Delete" name="action">
        </form>
    </td>
    	<%
    }
    	%>
    <td>
    <button><a href="edit.html" style="text-decoration:none; color:black;">Edit</a> </button>
    
    </td>
</tr>
<%
    }
} else {
%>
<tr>
    <td colspan="6">No users found</td>
</tr>
<%
}
%>
</table>
<div class="button-container">
	<form action="SearchServlet" method="get">         
	 		<input type="text" name="Name" id="Search" placeholder="Search ">
	 	    <input type="submit" class="search-button" value="search" name="action">
		<button class="search-button"><a href="register.html" class="add-user-link" style="text-decoration:none; color:black;">Add User</a></button>
	</form>
	<button><a href="LogoutServlet" style="text-decoration:none; color:black">Logout</a></button>
</div>
</body>
</html>