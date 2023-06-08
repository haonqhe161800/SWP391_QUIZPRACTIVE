/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAnswer;
import DAO.DAOCourse;
import DAO.DAOErrol;
import DAO.DAOQuestion;
import Entities.AccountUser;
import Entities.Answer;
import Entities.Course;
import Entities.Question;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
@WebServlet(name = "CourseController", urlPatterns = {"/CourseController"})
public class CourseController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            DAOCourse daoCourse = new DAOCourse();
            DAOErrol daoErrol = new DAOErrol();
            DAOQuestion daoQuestion = new DAOQuestion();
            DAOAnswer daoAnswer = new DAOAnswer();

            String service = request.getParameter("service");

            if (service.equals("details")) {
                HttpSession session = request.getSession();
                AccountUser au = (AccountUser) session.getAttribute("accountUser");
                int course_id = Integer.parseInt(request.getParameter("course_id"));
                ResultSet rsCourse = daoCourse.getData("select * from [Course] c join [Subject] s on c.subject_id = s.subject_id where c.course_id = " + course_id);
                ResultSet rsCountQuestion = daoCourse.getData("select Count(q.question_name) from Course c, Question q where q.course_id = c.course_id and c.course_id = " + course_id);
                ResultSet rsErrol = daoErrol.getData("select * from Errol");
                int errol = 0;
                if (au != null) {
                    while (rsErrol.next()) {
                        if (rsErrol.getInt(1) == au.getUser_id() && rsErrol.getInt(2) == course_id) {
                            errol++;
                        }
                    }
                }
                int count = 0;
                if (rsCountQuestion.next()) {
                    count = rsCountQuestion.getInt(1);
                }

                request.setAttribute("count", count);
                request.setAttribute("errol", errol);
                request.setAttribute("rsCourse", rsCourse);
                request.getRequestDispatcher("jspClient/CourseDetails.jsp").forward(request, response);
            }

            if (service.equals("errol")) {
                HttpSession session = request.getSession();
                if (session.getAttribute("accountUser") == null) {
                    response.sendRedirect("login");
                } else {
                    AccountUser au = (AccountUser) session.getAttribute("accountUser");
                    String id_raw = request.getParameter("id");
                    int id = Integer.parseInt(id_raw);
                    Vector<Course> list = daoCourse.getAll("select * from Course where course_id = " + id);
                    Course course = list.get(0);
                    int n = daoErrol.addProductByPre(au, id);
                    if (n > 0) {
                        daoCourse.updateQuantity(course);
                        response.sendRedirect("HomeController");
                    }
                }
            }
            
             if(service.equals("learning")) {
                String id_raw = request.getParameter("id");
                int id = Integer.parseInt(id_raw);  
                String nameCourse = "";
                ResultSet rsCourse = daoCourse.getData("select * from Course where course_id = " + id);
                if(rsCourse.next()) {
                    nameCourse = rsCourse.getString(4);
                }
                Vector<Question> listQuestion = daoQuestion.getAll("select * from Question where course_id = " + id);
                Vector<Answer> listAnswer = daoAnswer.getAll("select * from Answer");
                request.setAttribute("nameCourse", nameCourse);
                request.setAttribute("listQuestion", listQuestion);
                request.setAttribute("listAnswer", listAnswer);
                request.getRequestDispatcher("jspClient/Learning.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseController.class.getName()).log(Level.SEVERE, null, ex);
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
