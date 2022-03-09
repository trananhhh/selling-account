<%-- Document : index Created on : Feb 24, 2022, 4:52:37 PM Author : _trananhhh --%>
    <%@page import="java.time.LocalDate"%>
<%@page import="dal.UsersDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
<%@page import="dal.BillingsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous" />
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
                integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />

            <title>Admin -CMS</title>
            <style>
                body {
                    height: 100vh;
                }

                #dropdownUser2 i {
                    margin-right: 8px;
                }

                main {
                    display: flex;
                    flex-wrap: nowrap;
                    height: 100vh;
                    height: -webkit-fill-available;
                    max-height: 100vh;
                    overflow-x: auto;
                    overflow-y: hidden;
                }

                .card-icon {
                    position: absolute;
                    top: 8px;
                    right: 20px;
                    opacity: 0.6;
                    font-size: 48px;
                }

                p {
                    margin-bottom: 0;
                }
            </style>
        </head>

        <body>
            <main>
                <!-- Side bar -->
                <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;" bis_skin_checked="1">
                    
                    <a href="/" class="d-flex justify-content-center link-dark text-decoration-none">
                        <span class="fs-4 text-center">Admin CMS</span>
                    </a>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="#" class="nav-link active" aria-current="page">
                                <i class="bi bi-house-fill"></i>
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="./user" class="nav-link " aria-current="page">
                                <i class="bi bi-people-fill"></i>
                                User management
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="./billing?sort=Date" class="nav-link " aria-current="page">
                                <i class="bi bi-receipt"></i>
                                Billing management
                            </a>
                        </li>
                    </ul>
                    <hr>
                    <div class="dropdown" bis_skin_checked="1">
                        <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle"
                            id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">

                            <i class="bi bi-person-circle"></i>
                            <strong>
                                <%= session.getAttribute("username") %>
                            </strong>
                        </a>
                        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                            <!--                            <li><a class="dropdown-item" href="#">New project...</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="#">Profile</a></li>-->
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="../logout">Sign out</a></li>
                        </ul>
                    </div>
                </div>
                <%
                    BillingsDAO bd = new BillingsDAO();
                    UsersDAO ud = new UsersDAO();
                    int userCount = ud.getAllUsers().size();
                    int billCount = bd.getAllBillings().size();
                    LocalDate now = LocalDate.now();
                    int totalIncomeThisMonth = bd.getTotalIncomeByMonth(now.getMonthValue(), now.getYear());
                    DecimalFormat formatter = new DecimalFormat("#,###");
                %>
                <div class="grey-bg container-fluid">
                    <div class="row g-10 mt-3">
                        <div class="col-md-3">
                            <div class=" m-1 card text-white bg-primary">
                                <div class="card-body">
                                    <h5 class="card-title"><%= formatter.format(totalIncomeThisMonth) %> vnd</h5>
                                    <p class="card-text">Doanh thu tháng này</p>
                                    <i class="bi bi-wallet-fill card-icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class=" m-1 card text-white bg-danger">
                                <div class="card-body">
                                    <h5 class="card-title"><%= userCount %></h5>
                                    <p class="card-text">Khách hàng đã mua</p>
                                    <i class="bi bi-people-fill card-icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class=" m-1 card text-white bg-success">
                                <div class="card-body">
                                    <h5 class="card-title"><%= billCount %></h5>
                                    <p class="card-text">Đơn hàng thành công</p>
                                    <i class="bi bi-receipt-cutoff card-icon"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>