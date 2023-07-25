package Controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import DAO.DAOPost;
import DAO.DAOSlider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DashboardMarketerController extends HttpServlet {
   
   

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         DAOPost pdb = new DAOPost();
         DAOSlider sdb = new DAOSlider();
         
         try {
            int totalpost = pdb.getNumberPost("");
            int totalSlider = sdb.getCountSliderShow();
            int totalPending = pdb.getTotalPendingPost();
            request.setAttribute("totalpost", totalpost);
            request.setAttribute("totalPending", totalPending);
            request.setAttribute("totalslidershow", totalSlider);
        } catch (Exception e) {
        }
         request.setAttribute("pageMarketerdasboard", "dashboardmarketer");
        request.getRequestDispatcher("view/marketer/marketerDashboard.jsp").forward(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
