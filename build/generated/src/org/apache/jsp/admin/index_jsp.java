package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("    \n");
      out.write("        <!DOCTYPE html>\n");
      out.write("        <html lang=\"en\">\n");
      out.write("\n");
      out.write("        <head>\n");
      out.write("            <meta charset=\"UTF-8\">\n");
      out.write("            <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("            <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("                integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\"\n");
      out.write("                crossorigin=\"anonymous\" />\n");
      out.write("            <link rel=\"stylesheet\"\n");
      out.write("                href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css\"\n");
      out.write("                integrity=\"sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA==\"\n");
      out.write("                crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("\n");
      out.write("            <title>Admin -CMS</title>\n");
      out.write("            <style>\n");
      out.write("                body {\n");
      out.write("                    height: 100vh;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                i {\n");
      out.write("                    margin-right: 8px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                main {\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-wrap: nowrap;\n");
      out.write("                    height: 100vh;\n");
      out.write("                    height: -webkit-fill-available;\n");
      out.write("                    max-height: 100vh;\n");
      out.write("                    overflow-x: auto;\n");
      out.write("                    overflow-y: hidden;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .card-icon {\n");
      out.write("                    position: absolute;\n");
      out.write("                    top: 8px;\n");
      out.write("                    right: 20px;\n");
      out.write("                    opacity: 0.6;\n");
      out.write("                    font-size: 48px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                p {\n");
      out.write("                    margin-bottom: 0;\n");
      out.write("                }\n");
      out.write("            </style>\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("            <main>\n");
      out.write("                <!-- Side bar -->\n");
      out.write("                <div class=\"d-flex flex-column flex-shrink-0 p-3 bg-light\" style=\"width: 280px;\" bis_skin_checked=\"1\">\n");
      out.write("                    <a href=\"/\"\n");
      out.write("                        class=\"d-flex align-items-center mx-2 mb-md-0 me-md-auto link-dark text-decoration-none\">\n");
      out.write("                        <svg class=\"bi me-2\" width=\"40\" height=\"32\">\n");
      out.write("                            <use xlink:href=\"#bootstrap\"></use>\n");
      out.write("                        </svg>\n");
      out.write("                        <span class=\"fs-4\">Admin CMS</span>\n");
      out.write("                    </a>\n");
      out.write("                    <hr>\n");
      out.write("                    <ul class=\"nav nav-pills flex-column mb-auto\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link active\" aria-current=\"page\">\n");
      out.write("                                <i class=\"bi bi-house-fill\"></i>\n");
      out.write("                                Home\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"./user\" class=\"nav-link \" aria-current=\"page\">\n");
      out.write("\n");
      out.write("                                <i class=\"bi bi-people-fill\"></i>\n");
      out.write("                                User management\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"./billing\" class=\"nav-link \" aria-current=\"page\">\n");
      out.write("\n");
      out.write("                                <i class=\"bi bi-receipt\"></i>\n");
      out.write("                                Billing management\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <hr>\n");
      out.write("                    <div class=\"dropdown\" bis_skin_checked=\"1\">\n");
      out.write("                        <a href=\"#\" class=\"d-flex align-items-center link-dark text-decoration-none dropdown-toggle\"\n");
      out.write("                            id=\"dropdownUser2\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("\n");
      out.write("                            <i class=\"bi bi-person-circle\"></i>\n");
      out.write("                            <strong>\n");
      out.write("                                ");
      out.print( session.getAttribute("username") );
      out.write("\n");
      out.write("                            </strong>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"dropdown-menu text-small shadow\" aria-labelledby=\"dropdownUser2\">\n");
      out.write("                            <!--                            <li><a class=\"dropdown-item\" href=\"#\">New project...</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"#\">Settings</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"#\">Profile</a></li>-->\n");
      out.write("                            <li>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                            </li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"./logout\">Sign out</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"grey-bg container-fluid\">\n");
      out.write("                    <nav class=\"navbar navbar-light bg-light mb-4\">\n");
      out.write("                        <div class=\"container-fluid\">\n");
      out.write("                            <form class=\"d-flex\">\n");
      out.write("                                <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                    <div class=\"row g-10\">\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <div class=\" m-1 card text-white bg-primary\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h5 class=\"card-title\">10000</h5>\n");
      out.write("                                    <p class=\"card-text\">Khách hàng</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <div class=\" m-1 card text-white bg-danger\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h5 class=\"card-title\">10000</h5>\n");
      out.write("                                    <p class=\"card-text\">Khách hàng</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <div class=\" m-1 card text-white bg-primary\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h5 class=\"card-title\">10000</h5>\n");
      out.write("                                    <p class=\"card-text\">Khách hàng</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <div class=\" m-1 card text-white bg-primary\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h5 class=\"card-title\">10000</h5>\n");
      out.write("                                    <p class=\"card-text\">Khách hàng</p>\n");
      out.write("                                    <i class=\"bi bi-people-fill card-icon\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </main>\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        </body>\n");
      out.write("\n");
      out.write("        </html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
