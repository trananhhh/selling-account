package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Item;
import java.util.ArrayList;
import java.util.List;
import model.Plan;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("        <title>Giỏ hàng</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/base.css\">\n");
      out.write("        <style>\n");
      out.write("            .item-container{\n");
      out.write("                width: 500px;\n");
      out.write("                flex-direction: row;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <link\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\"\n");
      out.write("            integrity=\"sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("            referrerpolicy=\"no-referrer\"\n");
      out.write("        />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h1>Giỏ hàng của bạn</h1>\n");
      out.write("            <div class=\"item-list\">\n");
      out.write("                <a href=\"./plans\" id=\"back-btn\"\n");
      out.write("                    ><i class=\"fa-solid fa-arrow-left\"></i>Mua thêm</a\n");
      out.write("                >\n");
      out.write("            ");
 
                List<Item> listItems = (ArrayList) request.getAttribute("itemsInCart");
                for(Item i : listItems){
                    Plan p = i.getPlan();
                    int duration = i.getDuration();
                    int idx = listItems.indexOf(i);
            
      out.write("\n");
      out.write("                <div class=\"item-container\" id=\"item-");
      out.print( idx );
      out.write("\">\n");
      out.write("                    <div class=\"left-box\">\n");
      out.write("                        <h3>");
      out.print( p.getName() );
      out.write("</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"right-box\">\n");
      out.write("                        <span>");
      out.print( duration );
      out.write("</span> x\n");
      out.write("                        <span> ");
      out.print( p.getPrice() );
      out.write(" </span>\n");
      out.write("                        <h4 class=\"final-price\">\n");
      out.write("                            ");
      out.print( duration*p.getPrice() );
      out.write("\n");
      out.write("                        </h4>\n");
      out.write("                        <i class=\"fa-solid fa-trash-can remove-btn\" onclick=\"removeItem(");
      out.print( idx );
      out.write(")\"></i>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"purchase-box\">\n");
      out.write("                <p>Tổng cộng: </p>\n");
      out.write("                <h4 class=\"total\" id=\"total\"></h4>\n");
      out.write("                <p>vnd</p>\n");
      out.write("                <button class=\"btn\" id=\"purchase\">Thanh toán</button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("            let totalPrice = document.getElementById(\"total\");\n");
      out.write("            let priceList = document.getElementsByClassName(\"final-price\");\n");
      out.write("            var s = 0;\n");
      out.write("            for(var x of priceList) s += parseInt(x.innerHTML);\n");
      out.write("            totalPrice.innerHTML = s.toLocaleString();\n");
      out.write("\n");
      out.write("            removeItem = (id) => {\n");
      out.write("                if(confirm(\"Bạn muốn xoá sản phẩm này?\")){\n");
      out.write("                    window.location = \"./delete-item-in-cart?id=\" + id;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("    </script>\n");
      out.write("</html>\n");
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
