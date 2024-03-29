/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCourse;
import DAO.DAOMentor;
import DAO.DAOPost;
import DAO.DAOSubject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
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
            DAO.DAOPost daoPost = new DAOPost();

            if (service.equals("displayAll")) {
                ResultSet rsSubject = daoSubject.getData("SELECT s.subject_name, s.subject_id, s.[image], COUNT(c.course_id) AS quantity_of_course\n"
                        + "FROM Subject s LEFT JOIN Course c ON s.subject_id = c.subject_id\n"
                        + "GROUP BY s.subject_id,  s.subject_name, s.[image]");
                ResultSet rsCourse = daoCourse.getData("select c.course_id, c.image, m.display_name, m.image, c.course_name, s.subject_name, c.created_date, c.quantity, c.updated_date, s.subject_id, m.mentor_id\n" 
                        + "from [Subject] s join [Course] c on s.subject_id = c.subject_id\n"
                        + "left join Mentor_type m on c.mentor_id = m.mentor_id\n"
                        + "order by c.created_date asc");
                ResultSet rsMentor = daoMentor.getData("select * from Mentor_type");
                ResultSet rsPost = daoPost.getData("select p.post_id, p.blog_id, p.tittle, p.posted_date, p.updated_date, p.image, p.short_content, m.fullname, m.image\n"
                        + "from Post p left join Marketer_type m on p.marketer_id = m.marketer_id");

                request.setAttribute("rsSubject", rsSubject);
                request.setAttribute("rsCourse", rsCourse);
                request.setAttribute("rsMentor", rsMentor);
                request.setAttribute("rsPost", rsPost);
                request.setAttribute("pageHome", "HomeController");

                request.getRequestDispatcher("/jspClient/HomePage.jsp").forward(request, response);
            }

            if (service.equals("search")) {
                HttpSession session = request.getSession();
                request.setCharacterEncoding("UTF-8");
                String type = request.getParameter("category");
                String search_name = request.getParameter("keyword");

                request.setAttribute("type", type);
//                session.setAttribute("type", type);

                switch (type) {
                    case "mentor":
                        ResultSet rsMentorS = daoMentor.getData("select * from Mentor_type m where m.display_name like N'%" + search_name + "%'");
                        request.setAttribute("rsMentor", rsMentorS);
                        break;

                    case "blog":
                        ResultSet rsPostS = daoPost.getData("select p.post_id, p.blog_id, p.tittle, p.posted_date, p.updated_date, p.image, p.short_content, m.fullname, m.image\n"
                            + "from Post p left join Marketer_type m on p.marketer_id = m.marketer_id where p.tittle like N'%" + search_name + "%'");
                        request.setAttribute("rsPost", rsPostS);
                        break;

                    case "course":
                        ResultSet rsCourseS = daoCourse.getData("select c.course_id, c.image, m.display_name, m.image, c.course_name, s.subject_name, c.created_date, c.quantity, c.updated_date, s.subject_id, m.mentor_id\n" 
                        + "from [Subject] s join [Course] c on s.subject_id = c.subject_id\n"
                        + "left join Mentor_type m on c.mentor_id = m.mentor_id where c.course_name like N'%" + search_name + "%'");

                        request.setAttribute("rsCourse", rsCourseS);
                        break;

                    default:
                        break;
                }

                ResultSet rsSubject = daoSubject.getData("SELECT [Subject].subject_name, [Subject].subject_id, [Subject].[image], COUNT(Course.course_id) AS quantity_of_course\n"
                        + "FROM Subject\n"
                        + "LEFT JOIN Course ON Subject.subject_id = Course.subject_id\n"
                        + "GROUP BY [Subject].subject_id,  [Subject].subject_name, [Subject].[image]");

                request.setAttribute("text_search", search_name);
                request.setAttribute("rsSubject", rsSubject);
                request.getRequestDispatcher("/jspClient/HomePage.jsp").forward(request, response);
            }
        }
    }

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
