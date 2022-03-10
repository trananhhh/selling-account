package controller;
import dal.BillingsDAO;
import dal.PlansDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Billing;
/**
 *
 * @author NVT
 */
public class UserHistoryServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println(session.getAttribute("role"));
        try {
            if(session.getAttribute("role") == null)
                response.sendRedirect("../index.jsp");
            String userRole = session.getAttribute("role").toString();
            if(userRole.equals("1")){
                BillingsDAO ud = new BillingsDAO();
                PlansDAO pd = new PlansDAO();
                String username=session.getAttribute("username").toString();
                List<Billing> list =ud.getBillingsByName(username);
                request.setAttribute("bill", list);
                request.getRequestDispatcher("../user/billings.jsp").forward(request, response);
            }
            else
                response.sendRedirect("../index.jsp");
        } catch (Exception e) {
            response.sendRedirect("../login");
        }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}