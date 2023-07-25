/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOMarketer;
import DAO.DAOMentor;
import DAO.DAOUser;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Entities.AccountMarketer;
import Entities.AccountMentor;
import Entities.AccountUser;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Paths;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 3,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)
public class ProfileController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        request.getRequestDispatcher("jspClient/profile.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String displayname = request.getParameter("displayname");
        String address = request.getParameter("address");
        String describeMe = request.getParameter("aboutme");
        String academicLevel = request.getParameter("academiclevel");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String modifydate = dateCurrent();

        //call sesion follow role
        HttpSession session = request.getSession();
        AccountMarketer am = (AccountMarketer) session.getAttribute("accountMarketer");
        AccountMentor ame = (AccountMentor) session.getAttribute("accountMentor");
        AccountUser au = (AccountUser) session.getAttribute("accountUser");
        //call sesion follow role

        //khoi tao dao cua each account
        DAOUser dudb = new DAOUser();
        DAOMarketer dmdb = new DAOMarketer();
        DAOMentor dmedb = new DAOMentor();

        String fileName = null;
        try {
            Part thumbnailFile = request.getPart("avatar");
            String realPath = getServletContext().getRealPath("/assets/avatar");

            if (thumbnailFile != null && thumbnailFile.getSize() > 0) {
                fileName = Paths.get(thumbnailFile.getSubmittedFileName()).getFileName().toString();
            } else {
                fileName = "base.png";
            }

            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }
            if (thumbnailFile != null && thumbnailFile.getSize() > 0) {
                thumbnailFile.write(realPath + "/" + fileName);
            }

            if (am != null) {
                am.setDisplay_name(displayname);
                am.setDescyourself(describeMe);
                am.setFullName(fullname);
                am.setImage(fileName);
                am.setAddress(address);
                am.setAcademiclevel(academicLevel);
                am.setDob(dob);
                dmdb.updateProfile(am.getMakerter_id(), describeMe, fullname, fileName, displayname, address, dob, academicLevel, modifydate, Integer.parseInt(gender));
                request.setAttribute("message", "Update successfull!");
                session.setAttribute("accountMarketer", am);
                request.getRequestDispatcher("jspClient/profile.jsp").forward(request, response);
            } else if (ame != null) {
                ame.setDisplay_name(displayname);
                ame.setDescyourself(describeMe);
                ame.setFullName(fullname);
                ame.setImage(fileName);
                ame.setAddress(address);
                ame.setAcademiclevel(academicLevel);
                ame.setDob(dob);
                dmedb.updateProfile(ame.getMentor_id(), describeMe, fullname, fileName, displayname, address, dob, academicLevel, modifydate, Integer.parseInt(gender));
                request.setAttribute("message", "Update successfull!");
                session.setAttribute("accountMentor", ame);
                request.getRequestDispatcher("jspClient/profile.jsp").forward(request, response);
            } else if (au != null) {
                au.setDisplay_name(displayname);
                au.setDescyourself(describeMe);
                au.setFullName(fullname);
                au.setImage(fileName);
                au.setAddress(address);
                au.setAcademiclevel(academicLevel);
                au.setDob(dob);
                au.setGender(Integer.parseInt(gender));
                dudb.updateProfile(au.getUser_id(), describeMe, fullname, fileName, displayname, address, dob, academicLevel, modifydate, Integer.parseInt(gender));
                request.setAttribute("message", "Update successfull!");
                session.setAttribute("accountUser", au);
                request.getRequestDispatcher("jspClient/profile.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Update fail");
                request.getRequestDispatcher("jspClient/profile.jsp").forward(request, response);
            }

        } catch (ServletException | IOException e) {
        }

    }

    public String dateCurrent() {
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        return date.toString();
    }

}
