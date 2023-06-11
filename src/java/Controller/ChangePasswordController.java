/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Entities.AccountUser;
import Entities.AccountMentor;
import jakarta.servlet.annotation.WebServlet;
/**
 *
 * @author QUANG HAO
 */
@WebServlet(name = "ChangePasswordController", urlPatterns = {"/ChangePassword"})
public class ChangePasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        request.getRequestDispatcher("change-password.jsp").forward(request, response);
    }

      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
           request.setCharacterEncoding("utf-8");
       
        AccountDAO accountDao = new AccountDAO();
        
        //o dây can set profile cho 3 thang : mentor, user, marketing.
        //vi nhom khong chia role chung len t buoc phai lam the
        
        AccountUser oldAccount=(AccountUser) request.getSession().getAttribute("account");
//        int userid = oldAccount.getUser_id();
        String newPassword = request.getParameter("newPassword");
//        accountDao.changePassword(user_id, newPassword);
//    accountDao.changePassword(userid, newPassword);
        String isNoti = "yes";
        request.setAttribute("isNoti", isNoti);
        
        oldAccount.setPassword(newPassword);
        request.getSession().setAttribute("account", oldAccount);
//        request.getRequestDispatcher("Home.jsp").forward(request, response);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
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
