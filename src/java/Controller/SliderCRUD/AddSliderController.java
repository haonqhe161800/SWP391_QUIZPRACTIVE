/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.SliderCRUD;

import DAO.DAOSlider;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 3,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)

public class AddSliderController extends HttpServlet {

    public final String FAILURE = "view/marketer/dashboard-addslider.jsp";
    public final String SUCCESS = "listslider";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("view/marketer/dashboard-addslider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "";
        DAOSlider sdb = new DAOSlider();
        String content = request.getParameter("content");
        String note = request.getParameter("note");
        String subject = request.getParameter("subject");
        String status = request.getParameter("status");

        String fileName = "";
        try {
            Part part = request.getPart("upfile");
            String realPath = getServletContext().getRealPath("/uploadslider");

            if (part != null && part.getSize() > 0) {
                fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            } else {
                fileName = "broken-image.png";
            }

            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }
            if (part != null && part.getSize() > 0) {
                part.write(realPath + "/" + fileName);
            }

            //check subject not -1
            if ("-1".equals(subject)) {
                url = FAILURE;
                request.setAttribute("message", "error");
            } else {
                url = SUCCESS;
                //execute insert
                sdb.insertSilder(Integer.parseInt(subject), fileName, content, note, status == "1" ? true : false);
            }
//            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        request.getRequestDispatcher(url).forward(request, response);
        return;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
