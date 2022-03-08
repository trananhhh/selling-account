<%-- Document : user Created on : Feb 24, 2022, 8:31:59 AM Author : _trananhhh --%>
    <%@page import="dal.AccountsDAO" %>
        <%@page import="dal.PlansDAO" %>
            <%@page import="model.Plan" %>
                <%@page import="model.Billing" %>
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
                                            width: 1000px;
                                            margin: 0 auto;
                                            padding: 40px 0px;
                                        }

                                        #search-bar {
                                            width: 400px;
                                            display: inline-block;
                                        }
                                    </style>
                                </head>

                                <body>
                                    <div class="container">
                                        <h1>Billing list</h1>
                                        <form action="" method="POST" id="search-form" class="align-items-center">
                                            <div class="mb-3" id="search-bar">
                                                <input type="text" class="form-control" id="key" name="key" />
                                            </div>
                                            <button type="submit" class="btn btn-primary">Search</button>
                                        </form>
                                        <% 
                                            int numPage = Integer.parseInt(request.getAttribute("num").toString()); 
                                            int curPage = Integer.parseInt(request.getAttribute("curPage").toString());
                                            PlansDAO pl=new PlansDAO();
                                            List<Plan> lst= (List<Plan>) pl.getAllPlans();
                                            if(curPage == 1){ 
                                        %>
                                            <button class="btn btn-secondary" disabled>
                                                <i class="bi bi-caret-left-fill"> </i>
                                            </button>
                                            <a class="btn btn-secondary" href="/account/admin/billing?page=<%=curPage + 1%>&sort=<%= request.getAttribute("sort")==null?"":request.getAttribute("sort") %>"> 
                                                <i class="bi bi-caret-right-fill"> </i> 
                                            </a>
                                        <% } else if(curPage == numPage){ %>
                                            <a class="btn btn-secondary" href="/account/admin/billing?page=<%=curPage - 1%>&sort=<%= request.getAttribute("sort")==null?"":request.getAttribute("sort") %>">
                                                <i class="bi bi-caret-left-fill"> </i>
                                            </a>

                                            <button class="btn btn-secondary" disabled>
                                                <i class="bi bi-caret-right-fill"> </i>
                                            </button>
                                        <% } else { %>
                                            <a class="btn btn-secondary" href="/account/admin/billing?page=<%=curPage - 1%>&sort=<%= request.getAttribute("sort")==null?"":request.getAttribute("sort") %>"> 
                                                <i class="bi bi-caret-left-fill"> </i>
                                            </a>
                                            <a class="btn btn-secondary" href="/account/admin/billing?page=<%=curPage + 1%>&sort=<%= request.getAttribute("sort")==null?"":request.getAttribute("sort") %>"> 
                                                <i class="bi bi-caret-right-fill"> </i> 
                                            </a>
                                        <% } %>
                                        <table class="table table-responsive">
                                            <thead>
                                                <tr>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Date<button><a href="?sort=Date">sort</a></button></th>
                                                    <th scope="col">Plan<select name="pro_id">
                                                                        <option value="0"> All </option>
                                                                        <% for(Plan x: lst) { %>
                                                                        <option value="<%= x.getId() %>"> <%= x.getName() %> </option>
                                                                        <% } %>
                                                                        </select></th>
                                                    <th scope="col">Account</th>
                                                    <th scope="col">Username</th>
                                                    <th scope="col">Duration<button><a href="?sort=Duration">sort</a></button></th>
                                                    <th scope="col">Price<button><a href="?sort=Price">sort</a></button></th>
                                                    <th scope="col"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% 
                                                    List<Billing> billList = (List<Billing>) request.getAttribute("bill");
                                                    PlansDAO pd = new PlansDAO();
                                                    AccountsDAO ad = new AccountsDAO();
                                                    // List<Plan> planList = (List<Plan>) request.getAttribute("plan");
                                                    for(Billing x : billList){
                                                %>
                                                    <tr>
                                                        <td>
                                                            <%= x.getId()%>
                                                        </td>
                                                        <td>
                                                            <%= x.getDate()%>
                                                        </td>
                                                        <td>
                                                            <%= pd.getPlanById(x.getPlanId()).getName() %>
                                                        </td>
                                                        <td>
                                                            <%= ad.getAccountById(x.getAccountId()).getAccount() %>
                                                            <%--<%= x.getAccountId() %>--%>
                                                        </td>
                                                        <td>
                                                            <%= x.getUsername() %>
                                                        </td> 
                                                        <td>
                                                            <%= x.getDuration()%>
                                                        </td>
                                                        <td>
                                                            <%= x.getPrice()%>
                                                        </td>
                                                    </tr>
                                                    <% } %>
                                            </tbody>
                                        </table>
                                    </div><!-- JavaScript Bundle with Popper -->
                                    <script
                                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                                        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                                        crossorigin="anonymous"></script>
                                </body>

                                </html>