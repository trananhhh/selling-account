<%-- Document : cart Created on : Feb 18, 2022, 10:54:09 PM Author : _trananhhh
--%> <%@page import="model.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Plan"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Giỏ hàng</title>
        <style>
            * {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                display: flex;
                justify-content: center;
            }
            .container {
                padding-top: 32px;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                width: 500px;
            }
            .main-img {
                width: 250px;
                height: 250px;
                object-fit: cover;
                margin-top: 16px;
                border-radius: 16px;
            }
            .des-box {
                margin-top: 24px;
                margin-bottom: 24px;
            }
            .left-box {
                margin-right: 32px;
            }
            #bonus {
                color: rgb(163, 0, 0);
            }
            #back-btn i {
                margin-right: 4px;
            }
            #back-btn {
                color: black;
                text-decoration: none;
                font-size: 16px;
                text-transform: uppercase;
                font-weight: 500;
                margin-bottom: 24px;
                display: block;
            }
            #price {
                margin: 8px 0px;
            }
            .btn {
                background-color: white;
                padding: 6px 12px;
                border-radius: 12px;
                cursor: pointer;
            }
            #bonus {
                font-size: 12px;
            }
            .item-container {
                padding: 8px 16px;
                margin: 4px 0px;
                display: flex;
                width: 500px;
                border: solid #ccc 1px;
                justify-content: center;
            }
            .right-box {
                display: flex;
                flex: 1;
                justify-content: flex-end;
                align-items: center;
            }
            .final-price {
                margin: 0px 16px;
            }
            #purchase {
                margin: 32px 0px 32px 16px;
                align-self: flex-end;
            }
            .item-list {
                margin-top: 32px;
            }
            #total{
                margin: 0 2px 0 8px;
            }
            .purchase-box{
                display: flex;
                align-items: center;
                align-self: flex-end;
            }
            .remove-btn{
                cursor: pointer;
            }
        </style>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        />
    </head>
    <body>
        <div class="container">
            <h1>Giỏ hàng của bạn</h1>
            <div class="item-list">
                <a href="./plans" id="back-btn"
                    ><i class="fa-solid fa-arrow-left"></i>Mua thêm</a
                >
            <% 
                List<Item> listItems = (ArrayList) request.getAttribute("itemsInCart");
                for(Item i : listItems){
                    Plan p = i.getPlan();
                    int duration = i.getDuration();
                    int idx = listItems.indexOf(i);
            %>
                <div class="item-container" id="item-<%= idx %>">
                    <div class="left-box">
                        <h3><%= p.getName() %></h3>
                    </div>
                    <div class="right-box">
                        <span><%= duration %></span> x
                        <span> <%= p.getPrice() %> </span>
                        <h4 class="final-price">
                            <%= duration*p.getPrice() %>
                        </h4>
                        <i class="fa-solid fa-trash-can remove-btn" onclick="removeItem(<%= idx %>)"></i>
                    </div>
                </div>
            <%
                }
            %>
            </div>
            <div class="purchase-box">
                <p>Tổng cộng: </p>
                <h4 class="total" id="total"></h4>
                <p>vnd</p>
                <button class="btn" id="purchase">Thanh toán</button>
            </div>
        </div>
    </body>
    <script>
            let totalPrice = document.getElementById("total");
            let priceList = document.getElementsByClassName("final-price");
            var s = 0;
            for(var x of priceList) s += parseInt(x.innerHTML);
            totalPrice.innerHTML = s.toLocaleString();

            removeItem = (id) => {
                if(confirm("Bạn muốn xoá sản phẩm này?")){
                    window.location = "./delete-item-in-cart?id=" + id;
                }

            }
    </script>
</html>
