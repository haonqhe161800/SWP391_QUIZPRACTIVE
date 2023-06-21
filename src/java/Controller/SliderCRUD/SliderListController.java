/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.SliderCRUD;

import DAO.DAOSlider;
import Entities.Slider;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
public class SliderListController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //pagination
        String search = request.getParameter("search") == null ? "" : request.getParameter("search");
        String entry = request.getParameter("entry") == null ? "5" : request.getParameter("entry");
        String currentPage = request.getParameter("index");

        //check user thuoc role marketer xem la ai
        
        DAOSlider dsdb = new DAOSlider();
        try {
            search = search.trim();
            int choose = Integer.parseInt(entry);
            int totalSlider = dsdb.getSearchSlider(search);

            //assgin numberPage
            int numberPage = 0;

            if (choose > totalSlider) {
                numberPage = totalSlider;
            } else {
                numberPage = (int) Math.ceil((double) totalSlider / choose);
            }

            //pagination current
            int index;
            if (currentPage == "0" || currentPage == null) {
                index = 1;
            } else {
                index = Integer.parseInt(currentPage);
            }
            
            //view slider list follow some option
            List<Slider> list = dsdb.getAll2(search,index,choose);
            
            
            request.setAttribute("listslider", list);
            request.setAttribute("numberPage", numberPage);
            request.setAttribute("search",search);
        } catch (Exception e) {
        }

        request.getRequestDispatcher("view/marketer/dashboard-sliderlist.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}