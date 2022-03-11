<%-- Document : cart Created on : Feb 18, 2022, 10:54:09 PM Author : _trananhhh --%>
    <%@page import="model.Item" %>
        <%@page import="java.util.ArrayList" %>
            <%@page import="java.util.List" %>
                <%@page import="model.Plan" %>
                    <%@page contentType="text/html" pageEncoding="UTF-8" %>
                        <!DOCTYPE html>
                        <html>

                        <head>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                            <title>Giỏ hàng</title>
                            <link rel="stylesheet" href="./css/base.css">
                            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                                rel="stylesheet"
                                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                                crossorigin="anonymous" />
                            <link rel="stylesheet"
                                href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
                                integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
                                crossorigin="anonymous" referrerpolicy="no-referrer" />
                            <style>
                                .item-container {
                                    width: 550px;
                                    flex-direction: row;
                                    border-radius: 10px;
                                    margin-top: 16px;
                                }

                                .item-container h3 {
                                    font-size: 24px !important;
                                    margin-bottom: 0;
                                }

                                .purchase-box {
                                    justify-content: flex-end;
                                    margin: 22px 27px 6px 12px;
                                }

                                #purchase {
                                    margin: 0;
                                    margin-left: 8px;
                                }

                                p {
                                    padding: 0;
                                    margin: 0;
                                    font-size: 24px;
                                }

                                .creditCardForm {
                                    max-width: 700px;
                                    background-color: #fff;
                                    margin: 100px auto;
                                    overflow: hidden;
                                    padding: 25px;
                                    color: #4c4e56;
                                }

                                .creditCardForm label {
                                    width: 100%;
                                    margin-bottom: 10px;
                                }

                                .creditCardForm .heading h1 {
                                    text-align: center;
                                    font-family: 'Open Sans', sans-serif;
                                    color: #4c4e56;
                                }

                                .creditCardForm .payment {
                                    float: left;
                                    font-size: 18px;
                                    padding: 10px 25px;
                                    margin-top: 20px;
                                    position: relative;
                                }

                                .creditCardForm .payment .form-group {
                                    float: left;
                                    margin-bottom: 15px;
                                }

                                .creditCardForm .payment .form-control {
                                    line-height: 40px;
                                    height: auto;
                                    padding: 0 16px;
                                }

                                .creditCardForm .owner {
                                    width: 63%;
                                    margin-right: 10px;
                                }

                                .creditCardForm .CVV {
                                    width: 35%;
                                }

                                .creditCardForm #card-number-field {
                                    width: 100%;
                                }

                                .creditCardForm #expiration-date {
                                    width: 49%;
                                }

                                .creditCardForm #credit_cards {
                                    width: 50%;
                                    margin-top: 25px;
                                    text-align: right;
                                }

                                .creditCardForm #pay-now {
                                    width: 100%;
                                    margin-top: 25px;
                                }

                                .creditCardForm .payment .btn {
                                    width: 100%;
                                    margin-top: 3px;
                                    font-size: 24px;
                                    background-color: #2ec4a5;
                                    color: white;
                                }

                                .creditCardForm .payment select {
                                    padding: 10px;
                                    margin-right: 15px;
                                }

                                .transparent {
                                    opacity: 0.2;
                                }

                                @media(max-width: 650px) {

                                    .creditCardForm .owner,
                                    .creditCardForm .CVV,
                                    .creditCardForm #expiration-date,
                                    .creditCardForm #credit_cards {
                                        width: 100%;
                                    }

                                    .creditCardForm #credit_cards {
                                        text-align: left;
                                    }
                                }

                                #sel-month {
                                    display: inline-block;
                                    width: 135px;
                                }

                                #sel-year {
                                    display: inline-block;
                                    width: 100px;
                                }

                                #visa {
                                    height: 36px;
                                    width: 100px;
                                    margin-left: 30px;
                                }

                                body {
                                    background-color: rgb(235 235 235);
                                }

                                .nav{
                                    background-color: white;
                                    padding: 11px 11px;
                                    border-radius: 52px;
                                    /*margin-bottom: 60px;*/
                                    margin-top: 4px;
                                    width: 530px;
                                }

                                .nav .nav-link {
                                    border-radius: 32px;
                                }

                                .nav-link span{
                                    margin-top: 4px;
                                }
                                .nav-link {
                                    color: black;
                                }

                                .item-list {
                                    width: 42vw;
                                    margin-bottom: 100px;
                                    background-color: white;
                                    border-radius: 18px;
                                    padding: 20px 0px;
                                }
                                #cart-btn i {
                                    font-size: 28px;
                                }

                                #cart-btn{
                                    padding: 0px 16px;
                                    background-color: white;
                                    margin-left: 12px;
                                    margin-top: -3px;
                                }
                            </style>
                            <link rel="stylesheet"
                                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
                                integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
                                crossorigin="anonymous" referrerpolicy="no-referrer" />
                        </head>

                        <body>
                            <div class="container">
                                <% int cartItems=0; List<Item> listItems = null;
                                    if (session.getAttribute("itemsInCart") != null) {
                                    listItems = (List<Item>) session.getAttribute("itemsInCart");
                                        cartItems = listItems.size();
                                        }
                                        %>
                                        <nav class="nav nav-pills flex-column flex-sm-row">
                                            <% if(request.getParameter("plan") == null){ %>
                                            <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                                               href="./plans"><i class="bi bi-arrow-left"></i></a>
                                            <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                                                href="./plans">Danh sách sản phẩm</a>
                                            <a class="flex-sm-fill text-sm-center nav-link" href="#">
                                                Chi tiết sản phẩm</a>
                                            <% }else{ %>
                                            <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                                               href="./plans/details?id=<%= Integer.parseInt(request.getParameter("plan")) - 1 %>"><i class="bi bi-arrow-left"></i></a>
                                            <a class="flex-sm-fill text-sm-center nav-link" aria-current="page"
                                                href="./plans">Danh sách sản phẩm</a>
                                            <a class="flex-sm-fill text-sm-center nav-link" href="./plans/details?id=<%= request.getParameter("plan") %>">
                                                Chi tiết sản phẩm</a>
                                            <% } %>
                                            <a class="flex-sm-fill text-sm-center nav-link position-relative active" href="#">
                                                <i class="bi bi-bag"></i>
                                                Giỏ hàng
                                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                                    <%= cartItems %>
                                                </span>
                                            </a>
                                        </nav>
                                        <!-- <h1>Giỏ hàng</h1> -->
                                        <div
                                            class="item-list d-flex flex-column align-items-center justify-content-center">
                                            <!-- <a href="./plans" id="back-btn"><i class="fa-solid fa-arrow-left"></i>Mua thêm</a> -->
                                            <% if (listItems==null) { %>
                                                <br />
                                                <br />
                                                <br />
                                                <h4 class="text-center">Cart is empty! Let shopping first!!!</h4>
                                                <br />
                                                <br />
                                                <% } else { for (Item i : listItems) { Plan p=i.getPlan(); int
                                                    duration=i.getDuration(); int idx=listItems.indexOf(i); %>
                                                    <div class="item-container" id="item-<%= idx %>">
                                                        <div class="left-box">
                                                            <h3>
                                                                <%= p.getName()%>
                                                            </h3>
                                                        </div>
                                                        <div class="right-box">
                                                            <span>
                                                                <%= duration%>
                                                            </span> x
                                                            <span>
                                                                <%= p.getPrice()%>
                                                            </span>
                                                            <h4 class="final-price">
                                                                <%= duration * p.getPrice()%>
                                                            </h4>
                                                            <i class="fa-solid fa-trash-can remove-btn btn btn-outline-secondary"
                                                                onclick="removeItem(<%= idx %>)"></i>
                                                        </div>
                                                    </div>
                                                    <% }}%>
                                                        <div class="purchase-box">
                                                            <p>Tổng cộng: </p>
                                                            <h4 class="total" id="total"></h4>
                                                            <p>vnd</p>
                                                        <% if (listItems == null) { %>
                                                            <button id="purchase" type="button" disabled class="btn btn-primary"
                                                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                                Thanh toán
                                                            </button>
                                                        <%}else{%>
                                                            <button id="purchase" type="button" class="btn btn-primary"
                                                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                                Thanh toán
                                                            </button>
                                                        <%}%>
                                                        </div>
                                        </div>
                                        <div class="modal fade" id="exampleModal" tabindex="-1"
                                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Set up your
                                                            credit or
                                                            debit card</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container-fluid">
                                                            <!--<div class="creditCardForm">-->
                                                            <div class="payment">
                                                                <form method="POST" action="./purchase">
                                                                    <div class="row mb-3">
                                                                        <div class="form-group owner col-8">
                                                                            <!-- <label for="owner">Owner</label> -->
                                                                            <input type="text" class="form-control"
                                                                                id="owner" placeholder="Name" required>
                                                                        </div>
                                                                        <div class="form-group CVV col-4">
                                                                            <input type="text" class="form-control"
                                                                                id="cvv" placeholder="CVV" minlength="3"
                                                                                maxlength="3" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">

                                                                        <div class="form-group" id="card-number-field">
                                                                            <input type="text" class="form-control"
                                                                                id="cardNumber"
                                                                                placeholder="Card Number" minlength="16"
                                                                                maxlength="16" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <div class="form-group col-8"
                                                                            id="expiration-date">
                                                                            <select id="sel-month" class="form-select"
                                                                                required>
                                                                                <option value="01">January</option>
                                                                                <option value="02">February </option>
                                                                                <option value="03">March</option>
                                                                                <option value="04">April</option>
                                                                                <option value="05">May</option>
                                                                                <option value="06">June</option>
                                                                                <option value="07">July</option>
                                                                                <option value="08">August</option>
                                                                                <option value="09">September</option>
                                                                                <option value="10">October</option>
                                                                                <option value="11">November</option>
                                                                                <option value="12">December</option>
                                                                            </select>
                                                                            <select id="sel-year" class="form-select"
                                                                                required>
                                                                                <option value="16"> 2016</option>
                                                                                <option value="17"> 2017</option>
                                                                                <option value="18"> 2018</option>
                                                                                <option value="19"> 2019</option>
                                                                                <option value="20"> 2020</option>
                                                                                <option value="21"> 2021</option>
                                                                            </select>
                                                                            <!-- </div> -->
                                                                        </div>
                                                                        <div class="form-group col-4 justify-content-end"
                                                                            id="credit_cards">
                                                                            <img src="./assests/img/purchase.png"
                                                                                id="visa">
                                                                        </div>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-bs-dismiss="modal">Close</button>
                                                        <button type="submit" class="btn btn-primary">Confirm</button>
                                                    </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                            </div>
                            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                                crossorigin="anonymous"></script>
                        </body>
                        <script>
                            let totalPrice = document.getElementById("total");
                            let priceList = document.getElementsByClassName("final-price");
                            var s = 0;
                            for (var x of priceList)
                                s += parseInt(x.innerHTML);
                            totalPrice.innerHTML = s.toLocaleString();

                            removeItem = (id) => {
                                if (confirm("Bạn muốn xoá sản phẩm này?")) {
                                    window.location = "./delete-item-in-cart?id=" + id;
                                }

                            }
                        </script>

                        </html>