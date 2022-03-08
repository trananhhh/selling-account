/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author _trananhhh
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
//            out.println("<title>" +request.getAttribute("username").toString() +  "</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> hello </h1>");
//            out.println("<h1>" + request.getAttribute("username").toString() + "</h1>");
//            out.println("<h1>" + request.getAttribute("password").toString() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("./login.jsp");
//        request.getRequestDispatcher("./login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        try {
            String username = request.getParameter("username").toString();
            String password = request.getParameter("password").toString();
        
            UsersDAO ud = new UsersDAO();
            int status = ud.checkLogin(username, password);
            switch(status){
                case -2:
                    request.setAttribute("err", "Username bạn vừa nhập không tồn tại, hãy kiểm tra lại hoặc tạo tài khoản mới!");
                    request.getRequestDispatcher("./login.jsp").forward(request, response);
                    break;

                case -1:
                    request.setAttribute("err", "Password bạn vừa nhập không khớp,<br/>vui lòng thử lại!");
                    request.getRequestDispatcher("./login.jsp").forward(request, response);
                    break;

                case 0:{
                    session.setAttribute("username", username);
                    session.setAttribute("role", 0);
                    response.sendRedirect("./admin/index.jsp");
//                    request.getRequestDispatcher("./admin/index.jsp").forward(request, response);
                    break;
                }

                case 1:{
                    session.setAttribute("username", username);
                    session.setAttribute("role", 1);
                    response.sendRedirect("./index.jsp");
//                    request.getRequestDispatcher("./index.jsp").forward(request, response);
                    break;
                }
            }
            
        } catch (Exception e) { 
            response.sendRedirect("./login.jsp");
//                request.getRequestDispatcher("./login.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
