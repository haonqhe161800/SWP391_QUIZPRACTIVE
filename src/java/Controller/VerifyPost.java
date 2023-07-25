/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOPost;
import Entities.Post;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
@WebServlet(name = "VerifyPost", urlPatterns = {"/managePost"})
public class VerifyPost extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id") == null ? "" : request.getParameter("id");
        String status = request.getParameter("status") == null ? "" : request.getParameter("status");
        DAOPost pdb = new DAOPost();
        try {
            boolean flag = false;
            if ("approve".equals(status)) {
                flag = pdb.updateStatusPostApproved(Integer.parseInt(id));
            } else if ("reject".equals(status)) {
                flag = pdb.updateStatusPostReject(Integer.parseInt(id));
            }

            //check flag
            if (flag == true) {
                System.out.println("update successfully");
            }

            ArrayList<Post> arrpost = pdb.getAllPostPending();

            request.setAttribute("rsAprrovePost", arrpost);
        } catch (NumberFormatException e) {
        }
        
        request.getRequestDispatcher("jspClient/HomeForAdmin.jsp").forward(request, response);
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
