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
      out.write("            <title>Admin -CMS</title>\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("            <div class=\"d-flex flex-column flex-shrink-0 p-3 bg-light\" style=\"width: 280px;\" bis_skin_checked=\"1\">\n");
      out.write("                <a href=\"/\" class=\"d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none\">\n");
      out.write("                    <svg class=\"bi me-2\" width=\"40\" height=\"32\">\n");
      out.write("                        <use xlink:href=\"#bootstrap\"></use>\n");
      out.write("                    </svg>\n");
      out.write("                    <span class=\"fs-4\">Sidebar</span>\n");
      out.write("                </a>\n");
      out.write("                <hr>\n");
      out.write("                <ul class=\"nav nav-pills flex-column mb-auto\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a href=\"#\" class=\"nav-link active\" aria-current=\"page\">\n");
      out.write("                            <svg class=\"bi me-2\" width=\"16\" height=\"16\">\n");
      out.write("                                <use xlink:href=\"#home\"></use>\n");
      out.write("                            </svg>\n");
      out.write("                            Home\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\" class=\"nav-link link-dark\">\n");
      out.write("                            <svg class=\"bi me-2\" width=\"16\" height=\"16\">\n");
      out.write("                                <use xlink:href=\"#speedometer2\"></use>\n");
      out.write("                            </svg>\n");
      out.write("                            Dashboard\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\" class=\"nav-link link-dark\">\n");
      out.write("                            <svg class=\"bi me-2\" width=\"16\" height=\"16\">\n");
      out.write("                                <use xlink:href=\"#table\"></use>\n");
      out.write("                            </svg>\n");
      out.write("                            Orders\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\" class=\"nav-link link-dark\">\n");
      out.write("                            <svg class=\"bi me-2\" width=\"16\" height=\"16\">\n");
      out.write("                                <use xlink:href=\"#grid\"></use>\n");
      out.write("                            </svg>\n");
      out.write("                            Products\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\" class=\"nav-link link-dark\">\n");
      out.write("                            <svg class=\"bi me-2\" width=\"16\" height=\"16\">\n");
      out.write("                                <use xlink:href=\"#people-circle\"></use>\n");
      out.write("                            </svg>\n");
      out.write("                            Customers\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <hr>\n");
      out.write("                <div class=\"dropdown\" bis_skin_checked=\"1\">\n");
      out.write("                    <a href=\"#\" class=\"d-flex align-items-center link-dark text-decoration-none dropdown-toggle\"\n");
      out.write("                        id=\"dropdownUser2\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                        <img src=\"https://github.com/mdo.png\" alt=\"\" width=\"32\" height=\"32\" class=\"rounded-circle me-2\">\n");
      out.write("                        <strong>mdo</strong>\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"dropdown-menu text-small shadow\" aria-labelledby=\"dropdownUser2\">\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"#\">New project...</a></li>\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"#\">Settings</a></li>\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"#\">Profile</a></li>\n");
      out.write("                        <li>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                        </li>\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"#\">Sign out</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
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
