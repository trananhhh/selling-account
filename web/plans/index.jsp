<%-- 
    Document   : plans
    Created on : Feb 17, 2022, 8:09:19 PM
    Author     : _trananhhh
--%>

<%@page import="model.Item"%>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous" />
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
            integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../css/base.css">
        <style>
            .card-img-top{
                width: 255px;
                height: 166px;
                object-fit: cover;
                border-radius: 6px;
                margin: 17px auto 15px;
            }
            .btn{
                margin-top: 28px;
            }
            .card{
                width: 18rem;
            }
            .card-text{
                overflow: hidden;
                height: 75px;
            }
            #items-row{
                width: 70vw;
                margin-bottom: 100px;
                background-color: white;
                border-radius: 18px;
                padding: 20px 0px;
            }
            body{
                background-color: rgb(235 235 235);
            }
            .nav{
                background-color: white;
                padding: 11px 11px;
                border-radius: 52px;
                margin-bottom: 60px;
                margin-top: 36px;
                width: 530px;
            }
            .nav .nav-link{
                border-radius: 32px;
            }
            .nav-link{
                color: black;
            }
        </style>
    </head>
    <body>
        <%  int cartItems = 0;
            List<Item> listItems = null;
            if (session.getAttribute("itemsInCart") != null) {
                listItems = (List<Item>) session.getAttribute("itemsInCart");
                cartItems = listItems.size();
            }
        %>
        <div class="container d-flex flex-column align-items-center justify-content-center">
            <nav class="nav nav-pills flex-column flex-sm-row">
                <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                   href="./"><i class="bi bi-arrow-left"></i></a>
                <a class="flex-sm-fill text-sm-center nav-link active" aria-current="page"
                   href="#">Danh sách sản phẩm</a>
                <a class="flex-sm-fill text-sm-center nav-link" href="#">Chi tiết sản
                    phẩm</a>
                <a class="flex-sm-fill text-sm-center nav-link position-relative " href="./cart">
                    <i class="bi bi-bag"></i>
                    Giỏ hàng
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                        <%= cartItems%>
                    </span>
                </a>
            </nav>
            <!-- <h1 id="main-title">Danh sách sản phẩm</h1> -->
            <!-- <div class="menu row"> -->
            <!-- <div class="row row-cols-3 g-4"> -->
            <div class="row row-cols-1 row-cols-md-2 g-4 align-items-center justify-content-center" id="items-row">
                <%
                    PlansDAO pd = new PlansDAO();
                    List<Plan> list = pd.getAllPlans();
                    for (Plan x : list) {
                        String desList[] = x.getDescription().split(";");
                %>
                <div class="card border-secondary mb-3 mx-3">
                    <img src="./plans/assests/img/<%= x.getUrl()%>.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%= x.getName()%></h5>
                        <div class="card-text">
                            <%
                                for (int i = 0; i < desList.length; i++) {
                            %>
                            <p><%= desList[i]%></p>
                            <%
                                }
                            %>
                        </div>
                        <a href="./plans/details?id=<%= list.indexOf(x)%>" class="btn btn-primary">Mua ngay</a>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
