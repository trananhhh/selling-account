/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountsDAO;
import dal.BillingsDAO;
import dal.PlansDAO;
import dal.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Billing;
import model.Item;

/**
 *
 * @author _trananhhh
 */
public class AdminServlet extends HttpServlet {

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
            out.println("<title>Servlet AdminServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        try {
            String userRole = session.getAttribute("role").toString();
            if(userRole.equals("0")){
                BillingsDAO bd = new BillingsDAO();
                UsersDAO ud = new UsersDAO();
//                response.sendRedirect("./admin/index.jsp");
                request.setAttribute("notice", request.getAttribute("notice"));
                request.getRequestDispatcher("./admin/index.jsp").forward(request, response);
            }
            else 
                response.sendRedirect("../../account");
        } catch (Exception e) {
            response.sendRedirect("../../account/login");
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
        //Manual add bill
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        BillingsDAO bd = new BillingsDAO();
        AccountsDAO ad = new AccountsDAO();
        PlansDAO pd = new PlansDAO();
        UsersDAO ud = new UsersDAO();
        
        String username = request.getParameter("user"); 
        int planId      = Integer.parseInt(request.getParameter("plan"));
        int duration    = Integer.parseInt(request.getParameter("duration"));
        String dateInput = request.getParameter("date");
        if(dateInput == null){
            SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");  
            Date date = new Date();  
            dateInput = formatter.format(date).toString();
        }
        
        if(ud.checkInfo(username) == 0)
            ud.createAccount(username, "123", username + "@gmail.com", "0000");
                 
            
        out.println(username
                + " | " + planId
                + " | " + ad.getAccountAvailable(planId)
                + " | " + dateInput
                + " | " + duration
                + " | " + duration*pd.getPlanById(planId).getPrice());

        out.println(bd.createBill(   
            username, 
            planId, 
            ad.getAccountAvailable(planId), 
            dateInput,
            duration, 
            duration*pd.getPlanById(planId).getPrice()
        ));
        
        request.setAttribute("notice", "Created successfully!!!");
        request.getRequestDispatcher("./admin/").forward(request, response);
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
