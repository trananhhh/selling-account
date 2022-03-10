<%-- 
    Document   : details
    Created on : Mar 10, 2022, 10:54:50 AM
    Author     : _trananhhh
--%>

<%@page import="model.User" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                    crossorigin="anonymous" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
                    integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <title>Update User</title>
                <style>
                    form {
                        margin-top: 40px;
                        width: 85%;
                    }
                     .container-fluid {
                        margin-top: 80px;
                        width: 36vw;
                        padding-bottom: 24px;
                        background-color: rgb(255, 255, 255);
                        border-radius: 12px;
                    }
                    body {
                        background-color: #eee;
                    }
                    
                    #sidebar {
                        height: 100vh;
                    }
                </style>
            </head>
            <body>
                <main class="row">
                    <!-- Side bar -->
                    <div class="col-3">
                        <div id="sidebar" class="d-flex flex-column flex-shrink-0 p-3 bg-light"
                            style="width: 280px;" bis_skin_checked="1">

                            <a href="#"
                                class="d-flex justify-content-center link-dark text-decoration-none">
                                <span class="fs-4 text-center">Account Details</span>
                            </a>
                            <hr>
                            <ul class="nav nav-pills flex-column mb-auto">
                                <li class="nav-item">
                                    <a href="./user" class="nav-link " aria-current="page">
                                        <i class="bi bi-house-fill"></i>
                                        Home
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a  href="#" 
                                        class="nav-link active"
                                        aria-current="page">
                                        <i class="bi bi-people-fill"></i>
                                        Your accounts 
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="./user/billings" class="nav-link " aria-current="page">
                                        <i class="bi bi-receipt"></i>
                                        Purchase history
                                    </a>
                                </li>
                            </ul>
                            <hr>
                            <div class="dropdown" bis_skin_checked="1">
                                <a href="#"
                                    class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle"
                                    id="dropdownUser2" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    <i class="bi bi-person-circle"></i>
                                    <strong>
                                        <%= session.getAttribute("username") %>
                                    </strong></a>
                                <ul class="dropdown-menu text-small shadow"
                                    aria-labelledby="dropdownUser2">
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="./logout">Sign
                                            out</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Main -->
                    <div class="col-9">
                    <% 
                        User user =(User)request.getAttribute("user"); 
                        if(user == null)return; 
                    %>
                        <div class="container-fluid d-flex align-content-center justify-content-center">
                            <form action="./useredit?name=<%= user.getUsername() %>" method="POST">
                                <h1 class="text-center">User update</h1>
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" name="username" value="<%= user.getUsername() %>"
                                    disabled /></br>
                                <label for="password" class="form-label">Password</label>
                                <input type="text" class="form-control" name="password"
                                    value="<%= user.getPassword() %>" /></br>
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" name="email" value="<%= user.getEmail() %>" /></br>
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" name="phone" value="<%= user.getPhone() %>" /></br>
                                <input type="submit" class="btn btn-primary" value="Update" />
                                <!--<a href="../user/" class="btn btn-secondary">Cancel</a>-->
                            </form>
                        </div>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                        crossorigin="anonymous"></script>
            </body>
            </html>