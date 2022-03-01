<%-- Document : cart Created on : Feb 18, 2022, 10:54:09 PM Author : _trananhhh --%>
    <%@page import="model.Item" %>
        <%@page import="java.util.ArrayList" %>
            <%@page import="java.util.List" %>
                <%@page import="model.Plan" %>
                    <%@page contentType="text/html" pageEncoding="UTF-8" %>
                        <!DOCTYPE html>

                        <html>

                        <head>
                            <meta charset="utf-8" />
                            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                            <title>𝗧𝗥𝗔𝗡𝗔𝗡𝗛 | 𝗣𝗥𝗘𝗠𝗜𝗨𝗠 𝗔𝗖𝗖𝗢𝗨𝗡𝗧</title>
                            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                                rel="stylesheet"
                                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                                crossorigin="anonymous" />
                            <link rel="stylesheet"
                                href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
                                integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
                                crossorigin="anonymous" referrerpolicy="no-referrer" />
                            <style>
                                html {
                                    overflow-x: hidden;
                                }

                                #header {
                                    padding: 0px 15vw;
                                    align-items: center;
                                    box-shadow: inset 0 0 0 2000px rgb(0 0 0 / 50%);
                                    background: url('./assests/img/cover.jpg');
                                    background-size: cover;
                                    background-repeat: no-repeat;
                                    background-position: top;
                                    position: relative;
                                }

                                #quote-ava {
                                    max-height: 50px;
                                }

                                #main-home-content {
                                    transform: translateY(-17%);
                                }

                                /* #navbar {
                                    min-height: 88px;
                                    min-width: 100%;
                                    position: absolute;
                                    top: 0;
                                    left: 0;
                                    right: 0;
                                    display: flex;
                                    align-items: center;
                                    justify-content: flex-end;
                                    padding-right: 180px;
                                } */

                                #header-logo {
                                    position: absolute;
                                    height: 36px;
                                    width: auto;
                                    bottom: 36px;
                                    user-select: none;
                                    -webkit-user-drag: none;
                                }

                                #login-btn {
                                    padding: 4px 16px;
                                    margin-left: 8px;
                                    /* position: absolute; */
                                }

                                #login-btn i {
                                    margin-right: 4px;
                                }

                                .hidden {
                                    display: none;
                                }
                            </style>
                        </head>

                        <body class="d-flex flex-column h-100">
                            <main class="flex-shrink-0">
                                <!-- Navigation-->
                                <!-- Header-->
                                <header class="vh-100 row justify-content-center" id="header">
                                    <div class="container px-5">

                                        <nav id="navbar">
                                            <% if(session.getAttribute("username") !=null) { %>
                                                <div class="btn-group">
                                                    <button type="button"
                                                        class="btn btn-outline-secondary dropdown-toggle"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <i class="bi bi-person-circle"></i>
                                                        <%= session.getAttribute("username") %>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="./user/overview" class="dropdown-item"
                                                            type="button">Overview</button>
                                                            <a href="./logout" class="dropdown-item"
                                                                type="button">Logout</button>
                                                    </div>
                                                </div>
                                                <% } else { %>

                                                    <a id="login-btn" class="btn btn-secondary hidden" href="./login">
                                                        Login
                                                    </a>
                                                    <a href="./register" id="login-btn"
                                                        class="btn btn-outline-secondary hidden">
                                                        Register
                                                    </a>
                                                    <% } %>
                                        </nav>
                                        <div class="row gx-10 align-items-center justify-content-center"
                                            id="main-home-content">
                                            <div class="col-lg-8 col-xl-6 col-xxl-6">
                                                <div class="my-5 text-center text-xl-start">
                                                    <h1 class="display-5 fw-bolder text-white mb-2"
                                                        style="font-size: 42px">
                                                        |𝗧𝗥𝗔𝗡𝗔𝗡𝗛 <br />|𝗣𝗥𝗘𝗠𝗜𝗨𝗠 𝗔𝗖𝗖𝗢𝗨𝗡𝗧
                                                    </h1>
                                                    <p class="lead fw-normal text-white-50 mb-4">
                                                        Chúng tôi cung cấp tài khoản bản quyền uy
                                                        tín,<br />
                                                        chất lượng, giá tốt nhất!
                                                    </p>
                                                    <div
                                                        class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                                        <a class="btn btn-danger btn-lg px-4 me-sm-3" href="./plans">Mua
                                                            ngay</a>
                                                        <a href="#features"
                                                            class="btn btn-outline-danger btn-lg px-4 me-sm-3">
                                                            Tìm hiểu thêm
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-xxl-6 d-none d-xl-block text-center"></div>
                                        </div>
                                    </div>
                                    <img id="header-logo" src="./assests/img/netflix.png" alt="" />
                                </header>
                                <!-- Features section-->
                                <section class="py-5" id="features">
                                    <div class="container px-5 my-5">
                                        <div class="row gx-5">
                                            <div class="col-lg-4 mb-5 mb-lg-0">
                                                <h2 class="fw-bolder mb-0">
                                                    Dịch vụ cho thuê, <br />
                                                    nâng cấp tài khoản premium bản quyền.
                                                </h2>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="row gx-5 row-cols-1 row-cols-md-2">
                                                    <div class="col mb-5 h-100">
                                                        <div
                                                            class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                                            <i class="bi bi-collection"></i>
                                                        </div>
                                                        <h2 class="h5">Featured title</h2>
                                                        <p class="mb-0">
                                                            Paragraph of text beneath the heading to
                                                            explain the heading. Here is just a bit
                                                            more text.
                                                        </p>
                                                    </div>
                                                    <div class="col mb-5 h-100">
                                                        <div
                                                            class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                                            <i class="bi bi-building"></i>
                                                        </div>
                                                        <h2 class="h5">Featured title</h2>
                                                        <p class="mb-0">
                                                            Paragraph of text beneath the heading to
                                                            explain the heading. Here is just a bit
                                                            more text.
                                                        </p>
                                                    </div>
                                                    <div class="col mb-5 mb-md-0 h-100">
                                                        <div
                                                            class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                                            <i class="bi bi-toggles2"></i>
                                                        </div>
                                                        <h2 class="h5">Featured title</h2>
                                                        <p class="mb-0">
                                                            Paragraph of text beneath the heading to
                                                            explain the heading. Here is just a bit
                                                            more text.
                                                        </p>
                                                    </div>
                                                    <div class="col h-100">
                                                        <div
                                                            class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                                            <i class="bi bi-toggles2"></i>
                                                        </div>
                                                        <h2 class="h5">Featured title</h2>
                                                        <p class="mb-0">
                                                            Paragraph of text beneath the heading to
                                                            explain the heading. Here is just a bit
                                                            more text.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- Testimonial section-->
                                <div class="py-5 bg-light">
                                    <div class="container px-5 my-5">
                                        <div class="row gx-5 justify-content-center">
                                            <div class="col-lg-10 col-xl-7">
                                                <div class="text-center">
                                                    <div class="fs-4 mb-4 fst-italic">
                                                        "Chúng tôi luôn cố gắng là đơn vị cung cấp
                                                        dịch vụ tài khoản bản quyền tốt nhất, luôn
                                                        có được sự tin tưởng của quý khách!"
                                                    </div>
                                                    <div class="d-flex align-items-center justify-content-center">
                                                        <img class="rounded-circle me-3" id="quote-ava"
                                                            src="https://trananhhh.github.io/nfc-card/src/img/ava.png"
                                                            alt="..." />
                                                        <div class="fw-bold">
                                                            Nguyễn Trần Quốc Anh
                                                            <span class="fw-bold text-primary mx-1">/</span>
                                                            CEO
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </main>
                            <script
                                src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                        </body>

                        </html>