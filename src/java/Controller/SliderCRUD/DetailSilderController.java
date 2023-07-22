/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.SliderCRUD;

import DAO.DAOSlider;
import DAO.DAOSubject;
import Entities.Slider;
import Entities.Subject;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 *
 * @author Admin
 */
public class DetailSilderController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sliderId = request.getParameter("id");
        DAOSlider sdb = new DAOSlider();
        DAOSubject ssdb = new DAOSubject();
        Slider s = sdb.getById(Integer.parseInt(sliderId));
        Subject ss = ssdb.getById(s.getSubject_id());
        String tr = s.isIsShow() == true ? "visiable" : "hide";
        String sliderDetail = "<div class=\"modal fade bd-example-modal-lg\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\n"
                + "                <div class=\"modal-dialog modal-lg modal-dialog-centered\" role=\"document\">\n"
                + "                    <div class=\"modal-content\">\n"
                + "                        <div class=\"modal-header\">\n"
                + "                            <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">#Slider " + s.getSlider_id() + "</h5>\n"
                + "                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n"
                + "                                <span aria-hidden=\"true\">&times;</span>\n"
                + "                            </button>\n"
                + "                        </div>\n"
                + "                        <div class=\"modal-body\">\n"
                + "                              <div class=\"container-fluid\">\n"
                + "                                <div class=\"row\">\n"
                + "                                 <img src=\"uploadslider/" + s.getUrl() + "\" alt=\"" + s.getUrl() + "\" >"
                + "                                </div>\n"
                + "                                     <div class=\"row pt-3 text-center\">\n"
                + "                                    <p>Relative Subject: <strong>" + ss.getSubject_name() + "</strong></p>\n"
                + "                                    <p>Content: <strong>" + s.getContent() + "</strong></p>\n"
                + "                                    <p>Status:<strong>" + tr + "</strong></p>\n"
                + "                                </div>"
                + "                            </div>"
                + "                        </div>\n"
                + "                        <div class=\"modal-footer\">\n"
                + "                            <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n"
                + "                        </div>\n"
                + "                    </div>\n"
                + "                </div>\n"
                + "            </div>  ";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println(sliderDetail);
    }

}
