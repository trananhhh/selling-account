/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author _trananhhh
 */
public class AdminUserServlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try {
//            HttpSession session = request.getSession();
//            String userRole = session.getAttribute("role").toString();
//            if (userRole.equals("0")) {
//                UsersDAO ud = new UsersDAO();
//                String key = request.getParameter("key");
//                if (key == null) {
//                    key = "";
//                }
//                List<User> list = ud.getUsersByKey(key);
////        out.println(list);
//                int numPs = list.size();
//                int numperPage = 20;
//                int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
//                int start, end;
//                int page;
//
//                String tpage = request.getParameter("page");
//
//                try {
//                    page = Integer.parseInt(tpage);
//                } catch (NumberFormatException e) {
//                    page = 1;
//                }
//                start = (page - 1) * numperPage;
//                if (page * numperPage > numPs) {
//                    end = numPs;
//                } else {
//                    end = page * numperPage;
//                }
//                List<User> arr = ud.getListByPage(list, start, end);
//                //so phan tu cua 1 trang
//                request.setAttribute("data", arr);
//                //so trang
//                request.setAttribute("num", numpage);
//                request.setAttribute("curPage", page);
//                request.getRequestDispatcher("/admin/user.jsp").forward(request, response);
//            } else {
//                response.sendRedirect("../index.jsp");
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            response.sendRedirect("../login");
//        }
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
        HttpSession session = request.getSession();
        try {
            String userRole = session.getAttribute("role").toString();
            if (userRole.equals("0")) {
                UsersDAO ud = new UsersDAO();
                String key = request.getParameter("key");
                if (key == null) {
                    key = "";
                }
                List<User> list = ud.getUsersByKey(key);
                int numPs = list.size();
                int numperPage = 20;
                int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
                int start, end;
                int page;

                PrintWriter out = response.getWriter();
                String tpage = request.getParameter("page");

                try {
                    page = Integer.parseInt(tpage);
                } catch (NumberFormatException e) {
                    page = 1;
                }
                start = (page - 1) * numperPage;
                if (page * numperPage > numPs) {
                    end = numPs;
                } else {
                    end = page * numperPage;
                }
                List<User> arr = ud.getListByPage(list, start, end);
                //so phan tu cua 1 trang
                request.setAttribute("data", arr);
                //so trang
                request.setAttribute("num", numpage);
                request.setAttribute("curPage", page);
                request.setAttribute("key", key);
                request.getRequestDispatcher("/admin/user.jsp").forward(request, response);
            } else {
                response.sendRedirect("../index.jsp");
            }
        } catch (Exception e) {
            response.sendRedirect("../login");
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
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            String userRole = session.getAttribute("role").toString();
            if (userRole.equals("0")) {
                UsersDAO ud = new UsersDAO();
                String key = request.getParameter("key1");
                if (key == null) {
                    key = "";
                }
                List<User> list = ud.getUsersByKey(key);
//        out.println(list);
                int numPs = list.size();
                int numperPage = 20;
                int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
                int start, end;
                int page=1;

//                String tpage = request.getParameter("page");
//
//                try {
//                    page = Integer.parseInt(tpage);
//                } catch (NumberFormatException e) {
//                    page = 1;
//                }
                start = (page - 1) * numperPage;
                if (page * numperPage > numPs) {
                    end = numPs;
                } else {
                    end = page * numperPage;
                }
                List<User> arr = ud.getListByPage(list, start, end);
                //so phan tu cua 1 trang
                request.setAttribute("data", arr);
                //so trang
                request.setAttribute("num", numpage);
                request.setAttribute("curPage", page);
                request.setAttribute("key", key);
                request.getRequestDispatcher("/admin/user.jsp").forward(request, response);
            } else {
                response.sendRedirect("../index.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("../login");
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
