/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOPost;
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
public class ControllBlogDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String postdetail = request.getParameter("detailpost");
        DAOPost pdb = new DAOPost();
        int postId;
        try {
            postId = Integer.parseInt(postdetail);
            Post p = pdb.getById(postId);

            request.setAttribute("latestp", pdb.getTop1Post());
            request.setAttribute("listpexcept", pdb.ListPostExceptCurrent(postId));
            request.setAttribute("postfollow", p);

        } catch (NumberFormatException e) {
        }

        request.getRequestDispatcher("view/blog/BlogDetail.jsp").forward(request, response);
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
