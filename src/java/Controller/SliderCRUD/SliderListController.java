/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.SliderCRUD;

import DAO.DAOSlider;
import Entities.AccountMarketer;
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
            throws ServletException, IOException, IllegalStateException {
        //pagination
        String search = request.getParameter("search") == null ? "" : request.getParameter("search");
        String entry = request.getParameter("entry") == null || request.getParameter("entry") == "" ? "10" : request.getParameter("entry");
        String currentPage = request.getParameter("index");
         AccountMarketer ama = (AccountMarketer) request.getSession().getAttribute("accountMarketer") == null ? null : (AccountMarketer) request.getSession().getAttribute("accountMarketer");
//         if(ama == null){
//            request.setAttribute("notfound", "error");
//            request.getRequestDispatcher("view/marketer/dashboard-postlist.jsp").forward(request, response);
//        }else{
               DAOSlider dsdb = new DAOSlider();
        try {
            search = search.trim();
            int indexp = Integer.parseInt(entry);
            int totalSlider = dsdb.getSearchSlider(search);

            //assgin numberPage
            int numberPage = 0;

            if (indexp > totalSlider) {
                numberPage = 1;
            } else {
                numberPage = (int) Math.ceil((double) totalSlider / indexp);
            }

            //pagination current
            int index;
            if (currentPage == "0" || currentPage == null) {
                index = 1;
            } else {
                index = Integer.parseInt(currentPage);
            }
            
            //view slider list follow some option
            List<Slider> list = dsdb.getAll2(search,index,indexp);
            
            
            request.setAttribute("listslider", list);
            request.setAttribute("numberPage", numberPage);
            request.setAttribute("search",search);
            request.setAttribute("index",index);
            request.setAttribute("pageslider", "listslider");
//            request.set
        } catch (NumberFormatException e) {
        }

        request.getRequestDispatcher("view/marketer/dashboard-sliderlist.jsp").forward(request, response);
//         }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
