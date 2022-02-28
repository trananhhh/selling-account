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
            User temp=(User)request.getAttribute("id");
            if(temp==null)return;
        %>
        <form action="/account/admin/user" method="POST">
           ID:
           <input type="text" name="code" value="<%= temp.getCode() %> " placeholder="Ex:A1"/></br>
           Username:
           <input type="text" name="driver" value="<%= temp.getDriver() %>" placeholder="Ex:A1"/></br>
           Rate of the train:
           <input type="text" name="rate" value="<%= temp.getRate() %>" placeholder="Ex:A1"/></br>
           <input type="submit" value="Update"/>
        </form>
        <a href="listTrain">View all train</a>
        <p><button onclick='window.history.go(-1);'>Back to previous page</button>
        <p><a href="index.html">Back to homepage</a>
    </body>
</html>