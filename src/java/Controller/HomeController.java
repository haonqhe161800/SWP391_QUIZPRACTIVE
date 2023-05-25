/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCourse;
import DAO.DAOMarketing;
import DAO.DAOMentor;
import DAO.DAOSubject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;

@WebServlet(name = "HomeController", urlPatterns = {"/HomeController"})
public class HomeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String service = request.getParameter("service");

            if (service == null) {
                service = "displayAll";
            }

            DAO.DAOSubject daoSubject = new DAOSubject();
            DAO.DAOCourse daoCourse = new DAOCourse();
            DAO.DAOMentor daoMentor = new DAOMentor();
            DAO.DAOMarketing daoMarketing = new DAOMarketing();

            if (service.equals("displayAll")) {
                ResultSet rsSubject = daoSubject.getData("select * from Subject");
                ResultSet rsCourse = daoCourse.getData("select * from [Course] c join [Subject] s on c.subject_id = s.subject_id ");
                ResultSet rsMentor = daoMentor.getData("select * from Mentor");
                ResultSet rsMarketing = daoMarketing.getData("select * from Marketing");

                request.setAttribute("rsSubject", rsSubject);
                request.setAttribute("rsCourse", rsCourse);
                request.setAttribute("rsMentor", rsMentor);
                request.setAttribute("rsMarketing", rsMarketing);

                request.getRequestDispatcher("/jspClient/HomePage.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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