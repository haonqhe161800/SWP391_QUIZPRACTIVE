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
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;

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
            request.setCharacterEncoding("UTF-8");
            DAOSubject daoSubject = new DAOSubject();
            DAOCourse daoCourse = new DAOCourse();

            String service = request.getParameter("service");

            if (service.equals("details")) {
                int endP = daoCourse.getEndPage("select * from Course");
                String index = request.getParameter("index");
                if (index == null) {
                    index = "1";
                }
                int indexP = Integer.parseInt(index);
                String href = "SubjectController?service=details";
                String sql = "select * from Course order by course_id offset " + ((indexP - 1) * 12) + " rows fetch next 12 rows only";
                request.setAttribute("endP", endP);
                request.setAttribute("indexP", indexP);
                request.setAttribute("href", href);

                //Lấy ra id của subject mà mình muốn xem list
                int subject_id = Integer.parseInt(request.getParameter("subject_id"));
                //câu lệnh sql lấy ra phần subject list
                ResultSet rsSubject = daoSubject.getData("SELECT [Subject].subject_name, [Subject].subject_id, [Subject].[image], COUNT(Course.course_id) AS quantity_of_course\n"
                        + "FROM Subject\n"
                        + "LEFT JOIN Course ON Subject.subject_id = Course.subject_id\n"
                        + "GROUP BY [Subject].subject_id,  [Subject].subject_name, [Subject].[image]");
                //câu lệnh sql lấy ra phần list courses
                ResultSet rsCourse = daoCourse.getData("select * from [Course] c join [Subject] s on c.subject_id = s.subject_id where c.subject_id = " + subject_id);

                request.setAttribute("subject_id", subject_id);
                request.setAttribute("rsSubject", rsSubject);
                request.setAttribute("rsCourse", rsCourse);
                request.getRequestDispatcher("/jspClient/SubjectDetails.jsp").forward(request, response);
            }

            if (service.equals("search")) {
                //lấy ra phần text nhập vào
                String course_name = request.getParameter("course_name");
                int subject_id = Integer.parseInt(request.getParameter("subject_id"));
                //câu lệnh sql để select course có ở trong khóa học đó
                ResultSet rsCourseOfSubject = daoCourse.getData("select * from [Course] c join [Subject] s on c.subject_id = s.subject_id where c.subject_id = " + subject_id + " and c.course_name like N'%" + course_name + "%'");
                //setAtribute lại cho phần Subject list
                ResultSet rsSubject = daoSubject.getData("SELECT [Subject].subject_name, [Subject].subject_id, [Subject].[image], COUNT(Course.course_id) AS quantity_of_course\n"
                        + "FROM Subject\n"
                        + "LEFT JOIN Course ON Subject.subject_id = Course.subject_id\n"
                        + "GROUP BY [Subject].subject_id,  [Subject].subject_name, [Subject].[image]");

                request.setAttribute("text_search", course_name);
                request.setAttribute("rsCourse", rsCourseOfSubject);
                request.setAttribute("subject_id", subject_id);
                request.setAttribute("rsSubject", rsSubject);
                request.getRequestDispatcher("/jspClient/SubjectDetails.jsp").forward(request, response);
            }
            if (service.equals("delete")) {
                int delete = Integer.parseInt(request.getParameter("subject_id"));
                int rowsAffected = daoSubject.deleteSubject(delete);

                // Chuyển hướng về trang HomeForAdmin.jsp sau khi xóa
                response.sendRedirect("Subject");

            }
            if (service.equals("addSubject")) {
                // Lấy thông tin từ form
                String name = request.getParameter("name");
                String image = request.getParameter("image");

                // Khởi tạo đối tượng Subject
                Entities.Subject newSubject = new Entities.Subject(name, image);

                // Thêm môn học mới vào database
                int result = daoSubject.addSubject(newSubject);

                // Xử lý kết quả trả về
                if (result > 0)
                    System.out.println("Thêm môn học thành công!");
                else
                    System.out.println("Thêm môn học thất bại!");
                
                response.sendRedirect("Subject");
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
