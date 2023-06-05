/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOBlog;
import DAO.DAOPost;
import DAO.DAOSlider;
import Entities.Post;
import Entities.Slider;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;


public class ControllBlogList extends HttpServlet {
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        DAOSlider sdb = new DAOSlider();
        DAOBlog bdb = new DAOBlog();
        DAOPost pdb = new DAOPost();
        
        List<Slider> listsilder = sdb.getAll();
        int count = sdb.getCountSliderShow();
        
        request.setAttribute("totalSliderShow",count);
        request.getSession().setAttribute("listslider", listsilder);
        request.getRequestDispatcher("view/blog/BlogList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
