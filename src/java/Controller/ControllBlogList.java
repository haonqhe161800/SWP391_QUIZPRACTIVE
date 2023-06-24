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
import java.util.ArrayList;
import java.util.List;

public class ControllBlogList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String search = request.getParameter("search") == null ? "" : request.getParameter("search");
        String sort = request.getParameter("sort") == null ? "" : request.getParameter("sort");
//
        search = search.trim();
        DAOSlider sdb = new DAOSlider();
        DAOBlog bdb = new DAOBlog();
        DAOPost pdb = new DAOPost();

        //pagination
        int totalPost = pdb.getNumberPost(search);
        int numberPage = (int) Math.ceil((double) totalPost / 4);
        int index;
        String currentPage = request.getParameter("index");
        if (currentPage == "0" || currentPage == null) {
            index = 1;
        } else {
            index = Integer.parseInt(currentPage);
        }
//        //view post
        ArrayList<Post> plist = pdb.selectBlogList(sort, search, index);
        //total slider
        List<Slider> listsilder = sdb.getAll();
        int count = sdb.getCountSliderShow();

        request.setAttribute("latestp", pdb.getTop1Post());
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("plist", plist);
        request.setAttribute("totalSliderShow", count);
        request.setAttribute("search",search);
        request.setAttribute("blist", bdb.getAll());
        request.setAttribute("pagePost","listpost");
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
