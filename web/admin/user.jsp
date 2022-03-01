<%-- Document : user Created on : Feb 24, 2022, 8:31:59 AM Author : _trananhhh --%>
    <%@page import="model.User" %>
        <%@page import="java.util.List" %>
            <%@page contentType="text/html" pageEncoding="UTF-8" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                        crossorigin="anonymous" />
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
                        integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
                        crossorigin="anonymous" referrerpolicy="no-referrer" />
                    <title>Admin - User management</title>
                    <style>
                        td {
                            padding: 4px 8px;
                        }

                        .container {
                            width: 700px;
                            margin: 0 auto;
                            padding: 40px 0px;
                        }

                        #search-bar {
                            width: 400px;
                            display: inline-block;
                        }

                        #submit-btn {
                            margin-top: -4px;
                        }
                    </style>
                </head>

                <body>
                    <div class="container">
                        <h1>Users list</h1>
                        <form action="./search" id="search-form" class="align-items-center">
                            <div class="mb-3" id="search-bar">
                                <!-- <label for="key" class="form-label">Keyword</label> -->
                                <input type="text" class="form-control" id="key" name="key" />
                            </div>
                            <button type="submit" id="submit-btn" class="btn btn-primary">Search</button>
                        </form>

                        <table class="table table-responsive">
                            <thead>
                                <tr>
                                    <!--<th scope="col">ID</th>-->
                                    <th scope="col">Username</th>
                                    <!-- <th scope="col">Password</th> -->
                                    <th scope="col">Email</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Role</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List<User> list = (List<User>) request.getAttribute("users");
                                        for(User x : list){
                                        %>
                                        <tr>
                                            <td>
                                                <%= x.getUsername()%>
                                            </td>
                                            <td>
                                                <%= x.getEmail()%>
                                            </td>
                                            <td>
                                                <%= x.getPhone()%>
                                            </td>
                                            <td>
                                                <%= x.getRole()%>
                                            </td>
                                        </tr>
                                        <% } %>
                            </tbody>
                        </table>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                        crossorigin="anonymous"></script>
                </body>

                </html>