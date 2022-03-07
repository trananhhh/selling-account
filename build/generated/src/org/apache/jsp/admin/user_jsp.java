package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dal.UsersDAO;
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

      out.write(" \r\n");
      out.write("\r\n");
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
      out.write("        <form action=\"\" method=\"GET\" id=\"search-form\" class=\"align-items-center\">\r\n");
      out.write("            <div class=\"mb-3\" id=\"search-bar\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"key\" name=\"key\"/>\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\">Search</button>\r\n");
      out.write("        </form>\r\n");
      out.write("        ");

            int numPage = Integer.parseInt(request.getAttribute("num").toString());
            int curPage = Integer.parseInt(request.getAttribute("curPage").toString());
            
            if(curPage == 1){
        
      out.write("\r\n");
      out.write("        <button class=\"btn btn-secondary\" disabled>\r\n");
      out.write("                <i class=\"bi bi-caret-left-fill\"> </i>\r\n");
      out.write("        </button>\r\n");
      out.write("            <a class=\"btn btn-secondary\" href=\"/account/admin/user?page=");
      out.print(curPage + 1);
      out.write("\" > <i class=\"bi bi-caret-right-fill\"> </i> </a>    \r\n");
      out.write("        ");

            }
            else if(curPage == numPage){
        
      out.write("\r\n");
      out.write("            <a class=\"btn btn-secondary\" href=\"/account/admin/user?page=");
      out.print(curPage - 1);
      out.write("\" > <i class=\"bi bi-caret-left-fill\"> </i></a>\r\n");
      out.write("            \r\n");
      out.write("            <button class=\"btn btn-secondary\" disabled>\r\n");
      out.write("                <i class=\"bi bi-caret-right-fill\"> </i>\r\n");
      out.write("            </button>\r\n");
      out.write("        ");

          }
        else{
        
      out.write("\r\n");
      out.write("            <a class=\"btn btn-secondary\" href=\"/account/admin/user?page=");
      out.print(curPage - 1);
      out.write("\" > <i class=\"bi bi-caret-left-fill\"> </i></a>\r\n");
      out.write("            <a class=\"btn btn-secondary\" href=\"/account/admin/user?page=");
      out.print(curPage + 1);
      out.write("\" > <i class=\"bi bi-caret-right-fill\"> </i> </a>           \r\n");
      out.write("        ");

        }
        
      out.write("    \r\n");
      out.write("        <table class=\"table table-responsive\">\r\n");
      out.write("            <thead>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"col\">Username</th>\r\n");
      out.write("                    <th scope=\"col\">Email</th>\r\n");
      out.write("                    <th scope=\"col\">Phone</th>\r\n");
      out.write("                    <th scope=\"col\">Role</th>\r\n");
      out.write("                    <th scope=\"col\">Edit</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </thead>\r\n");
      out.write("            <tbody>\r\n");
      out.write("                ");

                    UsersDAO ud = new UsersDAO();
                    
                    List<User> list = (List<User>) request.getAttribute("data");
                    for(User x : list){
                
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>");
      out.print( x.getUsername());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( x.getEmail());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( x.getPhone());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( x.getRole());
      out.write("</td>\r\n");
      out.write("                    <td><a class=\"btn btn-secondary\" href=\"/account/admin/useredit?id=");
      out.print(x.getUsername());
      out.write("\">Edit</a></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

                    }
                
      out.write("\r\n");
      out.write("            </tbody>\r\n");
      out.write("        </table>\r\n");
      out.write("    </div><!-- JavaScript Bundle with Popper -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
