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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/base.css">
        <style>
            .item-container{
                width: 500px;
                flex-direction: row;
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
    <script>
            let totalPrice = document.getElementById("total");
            let priceList = document.getElementsByClassName("final-price");
            var s = 0;
            for(var x of priceList) s += parseInt(x.innerHTML);
            totalPrice.innerHTML = s.toLocaleString();

            removeItem = (id) => {
                if(confirm("Bạn muốn xoá sản phẩm này?ahihi")){
                    window.location = "./delete-item-in-cart?id=" + id;
                }

            }
    </script>
</html>
