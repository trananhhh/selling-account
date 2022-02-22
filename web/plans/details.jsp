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
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="../css/base.css" />
        <style>
            .right-box {
                flex-direction: column;
                align-items: flex-start;
            }
            .container {
                flex-direction: row;
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
