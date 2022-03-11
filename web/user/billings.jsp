<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.text.DecimalFormat" %>
<%@page import="dal.AccountsDAO" %>
<%@page import="model.Billing" %>
<%@page import="model.Plan" %>
<%@page import="dal.PlansDAO" %>
<%@page import="dal.UsersDAO" %>
<%@page import="model.User" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
        crossorigin="anonymous" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
        integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>User - Billing History</title>
    <style>
        .container-fluid {
            margin-left: -64px;
            width: 108%;
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

        .md-col {
            width: 160px;
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
            <div id="sidebar" class="d-flex flex-column flex-shrink-0 p-3 bg-light"
                style="width: 280px;" bis_skin_checked="1">

                <a href="#"
                    class="d-flex justify-content-center link-dark text-decoration-none">
                    <span class="fs-4 text-center">Billings History</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <a href="../../account/user" class="nav-link " aria-current="page">
                            <i class="bi bi-house-fill"></i>
                            Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a  href="../../account/useredit?name=<%= session.getAttribute("username") %>" 
                            class="nav-link"
                            aria-current="page">
                            <i class="bi bi-people-fill"></i>
                            Your accounts 
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link active" aria-current="page">
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
                            <a class="dropdown-item" href="../../account/logout">Sign
                                out</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Main -->
        <div class="col-9">
            <div class="container-fluid">
                <form action="../../account/user" method="POST" id="search-form"
                    class="align-items-center">
                    <div class="mb-3" id="search-bar">
                        <input type="text" class="form-control" id="key"
                            name="key1" />
                    </div>
                    <button type="submit" id="submit-btn"
                        class="btn btn-primary">Search</button>
                </form>
                <% 
                    PlansDAO pl=new PlansDAO(); 
                    List<Plan> lst= (List<Plan>) pl.getAllPlans();
                %>
                <div id="table-container">
                    <table class="table table-responsive table-hover">
                        <thead>
                            <tr>
                                <th scope="col" class="md-col"><a
                                        href="?sort=Date">Date <i
                                            class="bi bi-arrow-down-up"></i></a>
                                </th>
                                <th scope="col" class="md-col">Plan
                                </th>
                                <th scope="col" class="">Account</th>
                                <th scope="col"
                                    class="md-col text-center"><a
                                        href="?sort=Duration"
                                        class=" text-center">Duration <i
                                            class="bi bi-arrow-down-up"></i></a>
                                </th>
                                <th scope="col"
                                    class="md-col text-center"><a
                                        href="?sort=Price"
                                        class=" text-center">Price <i
                                            class="bi bi-arrow-down-up"></i></a>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  if(request.getAttribute("bill") !=null){
                                    List<Billing> billList = (List<Billing>) request.getAttribute("bill");
                                    PlansDAO pd = new PlansDAO();
                                    AccountsDAO ad = new AccountsDAO();
                                    DecimalFormat formatter = new DecimalFormat("#,###");
                                    SimpleDateFormat dateFormatter = new SimpleDateFormat("dd/MM/yyyy");

                                    for(Billing x : billList){
                                    %>
                                    <tr>
                                        <td class="md-col">
                                            <%= x.getDate() %>
                                        </td>
                                        <td class="md-col">
                                            <%= pd.getPlanById(x.getPlanId()).getName()
                                                %>
                                        </td>
                                        <td>
                                            <%= ad.getAccountById(x.getAccountId()).getAccount()
                                                %>
                                                <%--<%= x.getAccountId()
                                                    %>--%>
                                        </td>
                                        <td class="md-col text-center">
                                            <%= x.getDuration()%> tháng
                                        </td>
                                        <td class="md-col text-center">
                                            <%= formatter.format(x.getPrice())
                                                %> vnd
                                        </td>
                                    </tr>
                                    <% }} %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
    </div><!-- JavaScript Bundle with Popper -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>