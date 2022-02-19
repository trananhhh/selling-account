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
        <title>Danh sách sản phẩm</title><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <style>
            
            a{
                
                text-decoration: none;
            }
            *{
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            #main-title{
                text-align: center;
                margin: 32px 0px;
            }
            .menu {
                display: flex;
                width: 100vw;
                justify-content: space-around;
            }
            .item-container {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 16px;
                margin: 0 8px;
                width: 30%;
                border: solid #ccc 1px;
            }
            .item-container .des-box{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                margin: 16px 0;
            }
            .button-34 {
                background: #5E5DF0;
                border-radius: 999px;
                box-shadow: #5E5DF0 0 10px 20px -10px;
                box-sizing: border-box;
                color: #FFFFFF;
                cursor: pointer;
                font-family: Inter,Helvetica,"Apple Color Emoji","Segoe UI Emoji",NotoColorEmoji,"Noto Color Emoji","Segoe UI Symbol","Android Emoji",EmojiSymbols,-apple-system,system-ui,"Segoe UI",Roboto,"Helvetica Neue","Noto Sans",sans-serif;
                font-size: 16px;
                font-weight: 700;
                line-height: 24px;
                opacity: 1;
                outline: 0 solid transparent;
                padding: 8px 18px;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
                width: fit-content;
                word-break: break-word;
                border: 0;
              }
              .main-img {
                width: 150px;
                height: 150px;
                object-fit: cover;
                margin-top: 16px;
                border-radius: 16px;
            }
        </style>
    </head>
    <body>
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
        </div><script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
