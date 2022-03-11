<%-- Document : details Created on : Feb 17, 2022, 8:56:11 PM Author :
_trananhhh --%> <%@page import="model.Item"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Plan"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% Plan x = (Plan)request.getAttribute("item"); String desList[] =
    x.getDescription().split(";"); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><%= x.getName() %></title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
        />
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
            integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../css/base.css" />
        <style>
            .right-box {
                flex-direction: column;
                align-items: flex-start;
            }
            
            body{
                background-color: rgb(235 235 235);
            }
            .nav{
                background-color: white;
                padding: 11px 11px;
                border-radius: 52px;
                margin-bottom: 36px;
                margin-top: 4px;
                width: 530px;
            }
            .nav .nav-link{
                border-radius: 32px;
            }
            .nav-link{
                color: black;
            }
            .container{
                position: relative;
                width: 100vw;
            }
            #back-btn{
                /* top: 40px; */
                /* left: 372px; */
                background-color: white;
                padding: 16px;
                border-radius: 60px;
                height: 48px;
                width: 48px;
                display: flex;
                justify-content: center;
                align-items: center;
                /* position: absolute; */
                padding-right: 12px;
            }
            .container-fluid{
                display: flex;
                background-color: white;
                border-radius: 24px;
                width: 750px;
                justify-content: center;
                align-items: flex-start;
                padding: 48px;
            }
            .main-img{
                width: 300px;
                height: 300px;
                object-fit: cover;
                margin-top: -16px;
                border-radius: 16px;
            }
            #add-to-cart-btn{
                border-radius: 24px;
            }
            #price{
                margin-bottom: 16px;
            }
            #duration{
                width: 125px;
            }
            h1{
                font-size: 36px;
            }
            #bonus{
                color: rgb(163, 0, 0);
                font-size: 18px;
                margin-left: 12px;
            }
            .nav-link span{
                margin-top: 4px;
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
            DecimalFormat formatter = new DecimalFormat("#,###");
        %>
        <div class="container">
            <div class="row">     
                <div class="">
                    <nav class="nav nav-pills flex-column flex-sm-row">
                        <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                            href="../plans"><i class="bi bi-arrow-left"></i></a>
                        <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                            href="../plans">Danh sách sản phẩm</a>
                        <a class="flex-sm-fill text-sm-center nav-link active" href="#">Chi tiết sản
                            phẩm</a>
                        <a class="flex-sm-fill text-sm-center nav-link position-relative " href="../cart">
                            <i class="bi bi-bag"></i>
                            Giỏ hàng
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                <%= cartItems %>
                            </span>
                        </a>
                    </nav>
                </div>
            </div>

            <div class="container-fluid">
            <div class="left-box">
                <br />
                <img
                    class="main-img"
                    src="./assests/img/<%= x.getUrl() %>.png"
                    alt=""
                />
            </div>
            <div class="right-box">
                <h1><%= x.getName() %></h1>
                <div class="des-box">  
                    <% for(int i = 0; i < desList.length; i++){ %>
                    <p><%= desList[i] %></p>
                    <% } %>
                </div>
                <div class="d-flex align-items-center">
                    <select name="duration" class="form-select" id="duration" onchange="checkDur()">
                        <option value="1">1 Tháng</option>
                        <option value="6">6 Tháng</option>
                        <option value="12">12 Tháng</option>
                    </select>
                    <span id="bonus"></span>
                </div>
                <br />
                <h3 id="price"><%= formatter.format(x.getPrice()) %>vnd</h3>
                <button id="add-to-cart-btn" class="btn btn-primary" onclick="chotDon();">
                    Thêm vào giỏ hàng
                </button>
            </div>
        </div>
        </div>
    </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
    <script>
        checkDur = () => {
            let dur = document.getElementById('duration');
            let bonusText = document.getElementById('bonus');
            let priceText = document.getElementById('price');
            let price = <%= x.getPrice() %>
            console.log(dur.value);
            if (dur.value == 6) bonusText.innerHTML = '+ 1 tháng';
            if (dur.value == 12) bonusText.innerHTML = '+ 3 tháng';
            priceText.innerHTML = price * dur.value + " vnd";
        };

        checkDur();

        chotDon = () => {
            let dur = document.getElementById('duration').value;
            window.location = "../cart?plan=<%= x.getId() %>&dur="+dur;
        }
    </script>
</html>
