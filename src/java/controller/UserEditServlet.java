/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import dal.*;

/**
 *
 * @author NVT
 */
public class UserEditServlet extends HttpServlet {

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
            out.println("<title>Servlet UserEditServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserEditServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String name = request.getParameter("name");
        UsersDAO f = new UsersDAO();
        User temp = f.getUserByName(name);
        
        if(temp == null){
            pr.print("<h2>User not exist</h2>");
            //request.getRequestDispatcher("/admin/user").include(request, response);
        }else{
            if(request.getSession().getAttribute("role").toString().equals("0")){
                request.setAttribute("user", temp);
                request.getRequestDispatcher("/admin/userUpdate.jsp").include(request, response);
            }else{
                request.setAttribute("user", temp);
                request.getRequestDispatcher("/userUpdate.jsp").include(request, response);
            }
        }
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
        try{
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter pr = response.getWriter();
            String username=request.getParameter("name").trim();
            String password=request.getParameter("password").trim();
            String email=request.getParameter("email").trim();
            String phone=request.getParameter("phone").trim();
            boolean check=true;
            if(username==null||username.length()==0)check=false;
            if(password==null||password.length()==0)check=false;
            if(email==null||email.length()==0)check=false;
            if(phone==null||phone.length()==0)check=false;
            String xRole;
            try{
                xRole=request.getParameter("role").trim();
            }catch(Exception e){
                xRole="";
            }
            int role;
            if(xRole==null||xRole.length()==0){
                role=1;
            }else{
                role=Integer.parseInt(xRole);
            }
            User temp=new User(username,password,email,phone,role);
            if(!check){
                request.setAttribute("user", temp);
                pr.print("<h1>Update failed succesfully</h1>");
                request.getRequestDispatcher("./userUpdate.jsp").include(request, response);
            }else{
                UsersDAO f=new UsersDAO();
                f.update(username, temp);
                response.sendRedirect("../overview.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
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
