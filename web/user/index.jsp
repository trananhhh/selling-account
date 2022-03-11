<%@page import="model.View"%>
<%@page import="java.util.List"%>
<%@page import="dal.UsersDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
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
        <title>Account Overview</title>
        <style>
            /* body {
                height: 100vh;
            } */
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

            #notice {
                color: #57b846;
                position: absolute;
                font-size: 20px;
                top: 23px;
                left: 360px;
            }
            
            .container-fluid {
                width: 100%;
                margin: 0 auto;
            }

            td {
                padding: 4px 8px;
                overflow: auto;
            }

            html {
                overflow: hidden;
            }

            main {
                display: flex;
                flex-wrap: nowrap;
                height: 100vh;
                height: -webkit-fill-available;
                max-height: 100vh;
            }

            #search-bar {
                margin-top: 24px;
                width: 400px;
                display: inline-block;
            }

            #sidebar {
                height: 100vh;
            }

            .nav-btn {
                width: 42px;
                height: 42px;
                margin: 0 4px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            #dropdownUser2 i {
                margin-right: 8px;
            }

            #submit-btn {
                margin-top: -6px;
            }

            .sm-col {
                width: 80px;
            }
            .md-col{
                width: 128px;
            }
            .mmd-col{
                width: 150px;
            }

            table {
                display: flex;
                flex-flow: column;
                height: 100%;
                width: 92% !important;
            }

            table thead {
                flex: 0 0 auto;
                width: calc(100% - 0.9em);
            }

            table tbody {
                flex: 1 1 auto;
                display: block;
                overflow-y: scroll;
                overflow-x: hidden;
            }

            table tbody tr {
                width: 100%;
            }

            table thead,
            table tbody tr {
                display: table;
                table-layout: fixed;
            }

            #table-container {
                margin-top: 60px;
                height: 80vh;
            }

            a {
                text-decoration: none;
                color: black;
            }

            #pro_id {
                padding: 2px 10px;
                font-size: 13px;
                font-weight: 700;
                width: 90%;
            }
        </style>
    </head>
    <body>
        <main class="row">
            <!-- Side bar -->
            <div class="col-3">
                <div id="sidebar" class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;" bis_skin_checked="1">

                    <a href="#" class="d-flex justify-content-center link-dark text-decoration-none">
                        <span class="fs-4 text-center">Account Overview</span>
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
                            <a href="../../account/useredit?name=<%= session.getAttribute("username")%>" class="nav-link " aria-current="page">
                                <i class="bi bi-people-fill"></i>
                                Your accounts </a>
                        </li>
                        <li class="nav-item">
                            <a href="../../account/user/billings" class="nav-link " aria-current="page">
                                <i class="bi bi-receipt"></i>
                                Purchase history
                            </a>
                        </li>
                    </ul>
                    
                    <a href="../../account/plans" class="text-white nav-link btn btn-danger" aria-current="page">
                        <i class="bi bi-cart"></i>
                        Shopping
                    </a>
                    
                    <hr>
                    <div class="dropdown" bis_skin_checked="1">
                        <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle"
                           id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-person-circle"></i>
                            <strong>
                                <%= session.getAttribute("username")%>
                            </strong></a>
                        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="../../account/logout">Sign out</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-9 position-relative">
                <%--<%= request.getAttribute("notice") %>--%>
                <%
                    if (request.getAttribute("notice") != null) {
                        String notice = request.getAttribute("notice").toString();
                %>
                    <h2 id='notice' class='text-center'><%= notice%></h2>
                <%
                    }
                %>
                <div class="grey-bg container-fluid">   
                    <div id="table-container">

                        <table class="table table-responsive table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" class="mmd-col">Plan </td>
                                    <th scope="col" class="">Account</td>
                                    <th scope="col" class="mmd-col">Password</td>
                                    <th scope="col" class="mmd-col">Due date</td>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    UsersDAO ud = new UsersDAO();
                                    List<View> list = ud.getUserAccount(session.getAttribute("username").toString());
                                    for (View x : list) {
                                %>
                                <tr>
                                    <td class="mmd-col"> <%= x.getName()%> </td>
                                    <td class=""> <%= x.getAccount()%> </td>
                                    <td class="mmd-col"> <%= x.getPassword()%> </td>
                                    <td class="mmd-col"> <%= x.getDate()%> </td>
                                </tr>   
                                <%
                                    }
                                %>
                            </tbody>
                        </table> 
                    </div>
                </div>
            </div>

        </main
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>