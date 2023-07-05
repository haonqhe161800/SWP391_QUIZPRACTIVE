/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCourse;
import DAO.DAOSubject;
import Entities.AccountMentor;
import Entities.Course;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
@MultipartConfig()
@WebServlet(name = "CourseMentor", urlPatterns = {"/CourseMentor"})
public class CourseMentor extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String service = request.getParameter("service");
            DAOCourse daoCourse = new DAOCourse();
            DAOSubject daoSubject = new DAOSubject();

            if (service == null) {
                service = "show";
            }

            if (service.equals("show")) {
//                HttpSession session = request.getSession();
//                AccountMentor mentor = (AccountMentor) session.getAttribute("accountMentor");
//                int mentor_id = Integer.parseInt(request.getParameter("mentor_id"));
//                int mentor_id = mentor.getMentor_id();
                HttpSession session = request.getSession();
                AccountMentor mentor = (AccountMentor) session.getAttribute("accountMentor");
                int mentor_id = mentor.getMentor_id();

                ResultSet rsCourse = daoCourse.getData("select * from Subject s join Course c on s.subject_id = c.subject_id join Mentor_type m on c.mentor_id = m.mentor_id where m.mentor_id = " + mentor_id);
                ResultSet rsSubject = daoSubject.getData("select * from Subject");
                request.setAttribute("rsCourse", rsCourse);
                request.setAttribute("rsSubject", rsSubject);

                request.getRequestDispatcher("jspClient/CourseForMentor.jsp").forward(request, response);
            }

            if (service.equals("delete")) {
                int course_id = Integer.parseInt(request.getParameter("course_id"));
                int n = daoCourse.deleteCourseByCourseID(course_id);
                if (n > 0) {
                    response.sendRedirect("CourseMentor");
                }
            }

            if (service.equals("add")) {
                HttpSession session = request.getSession();
                AccountMentor mentor = (AccountMentor) session.getAttribute("accountMentor");
                int mentor_id = mentor.getMentor_id();
                
                String course_name = request.getParameter("name");
                String description = request.getParameter("description");

                Part imagePath = request.getPart("image");
                String uploadPath = getServletContext().getRealPath("/assets/images/categories");
                String fileName = imagePath.getSubmittedFileName();
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir(); // Tạo thư mục nếu chưa tồn tại
                }
                
                String relativePath = "./assets/images/categories/" + fileName;
                String absolutePath = getServletContext().getRealPath(relativePath);
                imagePath.write(absolutePath);
            
                int publish = Integer.parseInt(request.getParameter("publish"));
                int subject_id = Integer.parseInt(request.getParameter("subject_id"));

                ResultSet rsCourse = daoCourse.getData("select * from Subject s join Course c on s.subject_id = c.subject_id join Mentor_type m on c.mentor_id = m.mentor_id where m.mentor_id = 1");
                ResultSet rsSubject = daoSubject.getData("select * from Subject");
                request.setAttribute("rsCourse", rsCourse);
                request.setAttribute("rsSubject", rsSubject);
//
//                int mentor_id = 0;
//                if (rsCourse.next()) {
//                    mentor_id = rsCourse.getInt(9);
//                }
////                int Nmentor_id = 1;
                
                Course course = new Course(course_name, mentor_id, description, relativePath, publish);
                int n = daoCourse.addCourseByMentor(subject_id, course);
                if (n > 0) {
                    response.sendRedirect("CourseMentor");
                }
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
