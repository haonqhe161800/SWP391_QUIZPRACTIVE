/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Account;

import DAO.DAOAdmin;
import DAO.DAOMarketer;
import DAO.DAOMentor;
import DAO.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
//@WebServlet(name = "ChangePassword", urlPatterns = {"/changepsw"})
public class ChangePassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        Integer attribute = (Integer) session.getAttribute("sessionrole");

        if (action != null && email != null && attribute != null) {
            if (action.equals("reset")) {
                switch (attribute) {
                    case 1:
                        email = request.getParameter("email");
                        request.getSession().setAttribute("AccountA", new DAOAdmin().checkExist(email));
                        break;
                    case 2:
                        email = request.getParameter("email");
                        request.getSession().setAttribute("AccountM", new DAOMentor().checkExist(email));
                        break;
                    case 3:
                        email = request.getParameter("email");
                        request.getSession().setAttribute("AccountMa", new DAOMarketer().checkExist(email));
                        break;
                    case 4:
                        email = request.getParameter("email");
                        request.getSession().setAttribute("AccountU", new DAOUser().checkExist(email));
                        break;
                    default:
                        response.sendRedirect("login");
                }
                request.getRequestDispatcher("view/forgotpsw/resetpsw.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("view/Error/404.jsp").forward(request, response);
            }
        } else {
            //tra ve cai gi khi khong co action 
            request.getRequestDispatcher("view/Error/404.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = (String) request.getSession().getAttribute("email");
        String npass = request.getParameter("password");
        String cpass = request.getParameter("repassword");
        Integer attribute = (Integer) request.getSession().getAttribute("sessionrole");
        if (!npass.equals(cpass)) {
            request.setAttribute("msg", "New password and confirm new password fields do not match.");
            request.getRequestDispatcher("view/forgotpsw/resetpsw.jsp").forward(request, response);
            return;
        }

        //update pass for account 
        request.getRequestDispatcher("view/login/sign_in.jsp").forward(request, response);
    }

}
