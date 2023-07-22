/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.PostCRUD;

import DAO.DAOPost;
import DAO.DAOSubject;
import Entities.Post;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DetailPostController extends HttpServlet {

 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String post_id = request.getParameter("postid") == null ? "" : request.getParameter("postid");
        DAOPost pdb = new DAOPost();
        DAOSubject sdb = new DAOSubject();
        Post p = null;
        if (post_id.isEmpty()) {
            response.sendRedirect("dashboardlistpost");
        } else {
            try {
                p = pdb.getById(Integer.parseInt(post_id));
                request.setAttribute("ppppp", p);
                request.setAttribute("sssss", sdb.getById(p.getSubject_id()));
            } finally {
                request.getRequestDispatcher("view/marketer/dashboard-detaillpost.jsp").forward(request, response);

            }
        }
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
