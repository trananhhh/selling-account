<%-- 
    Document   : plans
    Created on : Feb 17, 2022, 8:09:19 PM
    Author     : _trananhhh
--%>

<%@page import="dal.PlansDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Plan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assests/style.css" />
        <title>Danh sách sản phẩm</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/base.css">
        <style>
        </style>
    </head>
    <body>
        <div class="container">
        <h1 id="main-title">Danh sách sản phẩm</h1>
        <div class="menu">
            <% 
                PlansDAO pd = new PlansDAO();
                List<Plan> list = pd.getAllPlans();
                for(Plan x : list){
                    String desList[] = x.getDescription().split(";");
            %>
            <div class="item-container">
                <h3><%= x.getName() %></h3>
                <img
                    class="main-img"
                    src="./plans/assests/img/<%= x.getUrl() %>.png"
                    alt=""
                />
                <div class="des-box">
                    <%
                    for(int i = 0; i < desList.length; i++){
                    %>
                        <p><%= desList[i] %></p>
                    <%
                    }
                    %>
                </div>
                <!--<button class="buy-btn btn">-->
                <a class="button-34" href="./plans/details?id=<%= list.indexOf(x) %>">Mua ngay</a>
                    <!-- HTML !-->

                <!--</button>-->
            </div>
            <%
                }
            %>
        </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
