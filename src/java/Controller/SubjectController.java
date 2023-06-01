/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCourse;
import DAO.DAOSubject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import java.servlet.http.HttpServletResponse;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
@WebServlet(name = "SubjectController", urlPatterns = {"/SubjectController"})
public class SubjectController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            DAOSubject daoSubject = new DAOSubject();
            DAOCourse daoCourse = new DAOCourse();

            String service = request.getParameter("service");

            if (service.equals("details")) {
                String id_raw = request.getParameter("id");
                int id = Integer.parseInt(id_raw);
                ResultSet rsAllSubject = daoSubject.getData("SELECT [Subject].subject_name, [Subject].subject_id, [Subject].[image], COUNT(Course.course_id) AS quantity_of_course\n"
                        + "FROM Subject\n"
                        + "LEFT JOIN Course ON Subject.subject_id = Course.subject_id\n"
                        + "GROUP BY [Subject].subject_id,  [Subject].subject_name, [Subject].[image]");
                ResultSet rsSubject = daoSubject.getData("select * from Subject where subject_id = " + id);
                ResultSet rsCourse = daoCourse.getData("select * from Course where subject_id = " + id);

                String subject_name = "";
                if (rsSubject.next()) {
                    subject_name = rsSubject.getString(2);
                }

                request.setAttribute("rsAllSubject", rsAllSubject);
                request.setAttribute("subject_name", subject_name);
                request.setAttribute("rsCourse", rsCourse);
                request.getRequestDispatcher("/jspClient/SubjectDetails.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectController.class.getName()).log(Level.SEVERE, null, ex);
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
