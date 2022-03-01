<%-- 
    Document   : userUpdate.jsp
    Created on : Feb 28, 2022, 3:48:30 PM
    Author     : NVT
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User</title>
    </head>
    <body>
        <%
            User user=(User)request.getAttribute("user");
            if(user==null)return;
        %>
        <form action="/admin/user" method="POST">
           ID:
           <input type="text" name="code" value="<%= user.getId() %> " disabled/></br>
           Username:
           <input type="text" name="driver" value="<%= user.getUsername() %>" disabled/></br>
           Password:
           <input type="text" name="rate" value="<%= user.getPassword() %>" /></br>
           Email:
           <input type="text" name="rate" value="<%= user.getEmail() %>" /></br>
           Phone:
           <input type="text" name="rate" value="<%= user.getPhone() %>" /></br>
           Role:
           <input type="text" name="rate" value="<%= user.getRole() %>" /></br>
           <input type="submit" value="Update"/>
        </form>
    </body>
</html>