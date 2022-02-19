<%-- Document : details Created on : Feb 17, 2022, 8:56:11 PM Author :
_trananhhh --%> <%@page import="model.Plan"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% Plan x = (Plan)request.getAttribute("item"); String desList[] =
    x.getDescription().split(";"); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><%= x.getName() %></title>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        />
        <style>
            * {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .container {
                padding-top: 32px;
                display: flex;
                align-items: center;
                justify-content: center;
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
                font-size: 12px;
                text-transform: uppercase;
                font-weight: 500;
                margin-bottom: 32px;
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
        </style>
    </head>
    <body>
        <div class="container">
            <div class="left-box">
                <a href="../plans" id="back-btn"
                    ><i class="fa-solid fa-arrow-left"></i>Quay lại Menu</a
                >
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
                <select name="duration" id="duration" onchange="checkDur()">
                    <option value="1">1 Tháng</option>
                    <option value="6">6 Tháng</option>
                    <option value="12">12 Tháng</option>
                </select>
                <span id="bonus"></span>
                <br />
                <h3 id="price"><%= x.getPrice() %>vnd</h3>
                <button id="add-to-cart-btn" class="btn" onclick="chotDon();">
                    Thêm vào giỏ hàng
                </button>
            </div>
        </div>
    </body>
    <script>
        checkDur = () => {
            let dur = document.getElementById('duration');
            let bonusText = document.getElementById('bonus');
            let priceText = document.getElementById('price');
            let price = <%= x.getPrice() %>
            console.log(dur.value);
            if (dur.value == 6) bonusText.innerHTML = 'Tặng thêm 1 tháng';
            if (dur.value == 12) bonusText.innerHTML = 'Tặng thêm 3 tháng';
            priceText.innerHTML = price * dur.value + " vnd";
        };
        
        checkDur();

        chotDon = () => {
            let dur = document.getElementById('duration').value;
            // if(dur == 6) dur = 7;
            // if(dur == 12) dur = 15;
            // alert(dur);

            window.location = "../cart?plan=<%= x.getId() %>&dur="+dur;
        }
    </script>
</html>
