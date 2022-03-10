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
            
                #notice {
                    font-size: 16px;
                    margin-bottom: 28px;
                    margin-top: -28px;
                    color: #57b846;
                }
            </style>
        </head>
        <body>
            <main>
                <!-- Side bar -->
                <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;" bis_skin_checked="1">
                    
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
                            <a href="../useredit?name=<%= session.getAttribute("username") %>" class="nav-link " aria-current="page">
                                <i class="bi bi-people-fill"></i>
                                Your accounts </a>
                        </li>
                        <li class="nav-item">
                            <a href="./billings" class="nav-link " aria-current="page">
                                <i class="bi bi-receipt"></i>
                                Purchase history
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
                            </strong></a>
                        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="./logout">Sign out</a></li>
                        </ul>
                    </div>
                </div>
                       
                <div class="grey-bg container-fluid">     
                <%
                    if(request.getAttribute("notice") != null){
                        String notice = request.getAttribute("notice").toString();
                %>
                    <h2 id='notice' class='text-center'><%= notice %></h2>
                <%
                    }
                %><div class="row g-10 mt-3">
                    </div>
                </div>
            </main
            <table border="1">
            <tr>
                <td> Account type: </td>
                <td> Account username: </td>
                <td> ACcount password: </td>
                <td> Date: </td>
            </tr>
            <% 
                UsersDAO ud=new UsersDAO();
                List<View> list = ud.getUserAccount(session.getAttribute("username").toString());
                for(View x:list){
            %>
            <tr>
                <td> <%= x.getName()%> </td>
                <td> <%= x.getAccount()%> </td>
                <td> <%=x.getPassword()%> </td>
                <td> <%=x.getDate() %> </td>
            </tr>   
            <%
                }
            %>
            </table> 
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>