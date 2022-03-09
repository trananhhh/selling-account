<%-- Document : userUpdate.jsp Created on : Feb 28, 2022, 3:48:30 PM Author : NVT --%>

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
                        margin-top: 48px;
                        width: 36vw;
                        padding-bottom: 24px;
                        background-color: rgb(255, 255, 255);
                        border-radius: 12px;
                    }

                    body {
                        background-color: #eee;
                    }
                </style>
            </head>

            <body>
                <% User user=(User)request.getAttribute("user"); if(user==null)return; %>
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

                            <label for="role" class="form-label">Role</label>
                            <input type="number" class="form-control" name="role" value="<%= user.getRole() %>" /></br>
                            <input type="submit" class="btn btn-primary" value="Update" />
                            <a href="./user" class="btn btn-secondary">Cancel</a>
                            <a href="./DeleteUser?user=<%= user.getUsername() %>" class="btn btn-danger">Delete</a>
                        </form>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                        crossorigin="anonymous"></script>
            </body>

            </html>