/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.DAOMentor;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author QUANG HAO
 */
@WebServlet(name="Mentor", urlPatterns={"/Mentor"})
public class Mentor extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            DAOMentor daoMentor = new DAOMentor();

            String service = request.getParameter("service");

            if (service == null) {
                service = "show";
            }

            if (service.equals("show")) {
                ResultSet rsMentor = daoMentor.getData("select * from Mentor_type");
                request.setAttribute("rsMentor", rsMentor);
                request.getRequestDispatcher("jspClient/HomeForAdmin.jsp").forward(request, response);
            }

            if (service.equals("search")) {
                String name = request.getParameter("name");
                ResultSet rsMentor = daoMentor.getData("select * from Mentor_type where fullname like '%" + name + "%'");
                request.setAttribute("rsMentor", rsMentor);
                request.getRequestDispatcher("jspClient/HomeForAdmin.jsp").forward(request, response);
            }
            if (service.equals("deleteMentor")) {
                int deleteMentor = Integer.parseInt(request.getParameter("mentor_id"));
                daoMentor.deleteMentor(deleteMentor);
                response.sendRedirect("Mentor");
            }
            
            if (service.equals("info")) {
                int mentor_id = Integer.parseInt(request.getParameter("mentor_id"));
                
                ResultSet rsMentorInfo = daoMentor.getData("select * from Mentor_type m where m.mentor_id = " + mentor_id);
                ResultSet coursesPosted = daoMentor.getData("select count(c.course_id), c.quantity, s.subject_name, c.course_name from Subject s join Course c on s.subject_id = c.subject_id\n" +
                        "join Mentor_type m on m.mentor_id = c.mentor_id where m.mentor_id = " + mentor_id + "\n" +
                        "group by s.subject_name, c.quantity, c.course_name");
                int numCoursesPosted = 0;
                int quantityPati = 0;
                while(coursesPosted.next()) {
                    numCoursesPosted += coursesPosted.getInt(1);
                    quantityPati += coursesPosted.getInt(2);
                }
                
                ResultSet rsRelatedCourse = daoMentor.getData("select c.course_id, c.image, m.display_name, m.image, c.course_name, s.subject_name, c.created_date, c.quantity, c.updated_date, s.subject_id, m.mentor_id \n" +
                    "from [Subject] s join [Course] c on s.subject_id = c.subject_id \n" +
                    "left join Mentor_type m on c.mentor_id = m.mentor_id where m.mentor_id = " + mentor_id);
                
                ResultSet rsRelatedMentor = daoMentor.getData("select * from Mentor_type m where m.mentor_id <> " + mentor_id);
                
                request.setAttribute("rsRelatedMentor", rsRelatedMentor);
                request.setAttribute("rsRelatedCourse", rsRelatedCourse);
                request.setAttribute("rsMentorInfo", rsMentorInfo);
                request.setAttribute("quantityPati", quantityPati);
                request.setAttribute("numCoursesPosted", numCoursesPosted);
                request.getRequestDispatcher("jspClient/MentorInfomation.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
           Logger.getLogger(Mentor.class.getName()).log(Level.SEVERE, null, ex);
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
