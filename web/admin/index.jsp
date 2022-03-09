<%-- Document : index Created on : Feb 24, 2022, 4:52:37 PM Author : _trananhhh --%>
    <%@page import="dal.PlansDAO"%>
<%@page import="model.Plan"%>
<%@page import="java.util.List"%>
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
<<<<<<< HEAD
                            <a href="./admin/billing?sort=Date" class="nav-link " aria-current="page">
=======
                            <a href="./billing" class="nav-link " aria-current="page">
>>>>>>> b189db3bc9693b90b01d4840ac31c34369ee74b2
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
                    PlansDAO pd = new PlansDAO();
                    int userCount = ud.getAllUsers().size();
                    int billCount = bd.getAllBillings().size();
                    LocalDate now = LocalDate.now();
                    int totalIncomeThisMonth = bd.getTotalIncomeByMonth(now.getMonthValue(), now.getYear());
                    DecimalFormat formatter = new DecimalFormat("#,###");
                %>
                <div class="grey-bg container-fluid">
                    <div class="row g-10 mt-3 px-2">
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
                        <div class="col-md-3">
                            <div class=" m-1 card text-white bg-warning">
                                <div class="card-body">
                                    <h5 class="card-title"><%= billCount %></h5>
                                    <p class="card-text">Đơn hàng thành công</p>
                                    <i class="bi bi-receipt-cutoff card-icon"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 p-3">
                            <div class="mx-5">
                            <form action="../admin" method="POST">
                                <h3 class="text-center mb-4 mt-4">Create bill</h3>
                                
                                <%
                                    if(request.getAttribute("notice") != null){
                                        String notice = request.getAttribute("notice").toString();
                                %>
                                    <h2 id='notice' class='text-center'><%= notice %></h2>
                                <%
                                    }
                                %>
                                
                                <input type="text" class="form-control mt-2"  name="user" placeholder="User" required>
                                <select class="form-select mt-2" aria-label="Plans" name="plan" required>
                                    <%
                                        List<Plan> listPlans = pd.getAllPlans();
                                        for(int i = 0; i < listPlans.size(); i++){
                                    %>
                                        <option value="<%= i+1 %>"> <%= listPlans.get(i).getName() %> </option>
                                    <% } %>
                                </select>
                                <input type="number" class="form-control mt-2"  name="duration" placeholder="Duration" value="1">
                                <input type="date" class="form-control mt-2"  name="date" placeholder="Date" value="1">
                                <button type="submit" class="btn btn-primary align-self-center mt-2 px-3">Submit</button>
                            </form>
                        </div>
                        </div>
                        <div class="col-6 p-3">
                            <canvas id="myChart"></canvas>
                            <p class="text-center">Income in <%= now.getYear() %></p>
                            <ul style="display: none;">
                                <% for(int i = 1; i <= now.getMonthValue(); i++){%>
                                <li class="interest-month"> <%= bd.getTotalIncomeByMonth(i, now.getYear()) %></li>
                                <%}%>
                            </ul>
                        </div>
                    </div>
                </div>
            </main>
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            <script>
                const now = new Date();
                let labels = [];
                for(let i = 1; i <= now.getMonth()+1; i++)
                    labels.push(i);
                let interestRaw = document.getElementsByClassName("interest-month");    
                let interest = [];

                for(let i = 0; i < interestRaw.length; i++){
                    interest.push(interestRaw[i].innerHTML);
                    // console.log(interestRaw[i].innerHTML);
                }

                const data = {
                  labels: labels,
                  datasets: [{
                    label: 'Income',
                    backgroundColor: 'rgb(255, 99, 132)',
                    borderColor: 'rgb(255, 99, 132)',
                    data: interest,
                  }]
                };
              
                const config = {
                  type: 'line',
                  data: data,
                  options: {}
                };
              </script>
              <script>
                const myChart = new Chart(
                  document.getElementById('myChart'),
                  config
                );
              </script>
              
        </body>

        </html>