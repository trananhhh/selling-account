package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.User;
import java.util.List;

public final class user_jsp extends org.apache.jasper.runtime.HttpJspBase
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

<<<<<<< HEAD
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("        <link\n");
      out.write("            href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("        />\n");
      out.write("        <link\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css\"\n");
      out.write("            integrity=\"sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA==\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("            referrerpolicy=\"no-referrer\"\n");
      out.write("        />\n");
      out.write("        <title>Admin - User management</title>\n");
      out.write("        <style>\n");
      out.write("            td{\n");
      out.write("                padding: 4px 8px;\n");
      out.write("            }\n");
      out.write("            .container{\n");
      out.write("                width: 700px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                padding: 40px 0px;\n");
      out.write("            }\n");
      out.write("            #search-bar{\n");
      out.write("                width: 400px;\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <h1>User list</h1>\n");
      out.write("        <form action=\"./search\" id=\"search-form\" class=\"align-items-center\">\n");
      out.write("            <div class=\"mb-3\" id=\"search-bar\">\n");
      out.write("                <label for=\"key\" class=\"form-label\">Keyword</label>\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"key\" name=\"key\"/>\n");
      out.write("            </div>\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\">Search</button>\n");
      out.write("        </form>\n");
      out.write("            \n");
      out.write("        <table class=\"table table-responsive\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\">ID</th>\n");
      out.write("                    <th scope=\"col\">Username</th>\n");
      out.write("                    <th scope=\"col\">Password</th>\n");
      out.write("                    <th scope=\"col\">Email</th>\n");
      out.write("                    <th scope=\"col\">Phone</th>\n");
      out.write("                    <th scope=\"col\">Role</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
=======
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        />\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css\"\r\n");
      out.write("            integrity=\"sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA==\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("            referrerpolicy=\"no-referrer\"\r\n");
      out.write("        />\r\n");
      out.write("        <title>Admin - User management</title>\r\n");
      out.write("        <style>\r\n");
      out.write("            td{\r\n");
      out.write("                padding: 4px 8px;\r\n");
      out.write("            }\r\n");
      out.write("            .container{\r\n");
      out.write("                width: 700px;\r\n");
      out.write("                margin: 0 auto;\r\n");
      out.write("                padding: 40px 0px;\r\n");
      out.write("            }\r\n");
      out.write("            #search-bar{\r\n");
      out.write("                width: 400px;\r\n");
      out.write("                display: inline-block;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <h1>User list</h1>\r\n");
      out.write("        <form action=\"./search\" id=\"search-form\" class=\"align-items-center\">\r\n");
      out.write("            <div class=\"mb-3\" id=\"search-bar\">\r\n");
      out.write("                <label for=\"key\" class=\"form-label\">Keyword</label>\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"key\" name=\"key\"/>\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\">Search</button>\r\n");
      out.write("        </form>\r\n");
      out.write("            \r\n");
      out.write("        <table class=\"table table-responsive\">\r\n");
      out.write("            <thead>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"col\">ID</th>\r\n");
      out.write("                    <th scope=\"col\">Username</th>\r\n");
      out.write("                    <th scope=\"col\">Password</th>\r\n");
      out.write("                    <th scope=\"col\">Email</th>\r\n");
      out.write("                    <th scope=\"col\">Phone</th>\r\n");
      out.write("                    <th scope=\"col\">Role</th>\r\n");
      out.write("                    <th scope=\"col\">Edit</th>\r\n");
      out.write("                    <th scope=\"col\">Eye</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </thead>\r\n");
      out.write("            <tbody>\r\n");
>>>>>>> 3b279d38055d3c03e4207c68b5bb71f7ec0ea750
      out.write("                ");

                    List<User> list = (List<User>) request.getAttribute("users");
                    for(User x : list){
                
<<<<<<< HEAD
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print( x.getId() );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( x.getUsername());
      out.write("</td>\n");
      out.write("                    <td><input type=\"password\" value=\"");
      out.print(  x.getPassword());
      out.write("\" disabled></td>\n");
      out.write("                    <td>");
      out.print( x.getEmail());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( x.getPhone());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( x.getRole());
      out.write("</td>\n");
      out.write("                </tr>\n");
=======
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>");
      out.print( x.getId() );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( x.getUsername());
      out.write("</td>\r\n");
      out.write("                    <td><input type=\"password\" value=\"");
      out.print(x.getPassword());
      out.write("\" disabled></td>\r\n");
      out.write("                    <td>");
      out.print( x.getEmail());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( x.getPhone());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( x.getRole());
      out.write("</td>\r\n");
      out.write("                    <td><a href=\"/account/admin/useredit?id=");
      out.print(x.getId());
      out.write("\">Edit</a></td>\r\n");
      out.write("                </tr>\r\n");
>>>>>>> 3b279d38055d3c03e4207c68b5bb71f7ec0ea750
      out.write("                ");

                    }
                
<<<<<<< HEAD
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
=======
      out.write("\r\n");
      out.write("            </tbody>\r\n");
      out.write("        </table>\r\n");
      out.write("    </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
>>>>>>> 3b279d38055d3c03e4207c68b5bb71f7ec0ea750
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
