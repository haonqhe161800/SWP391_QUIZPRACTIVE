/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import Entities.AccountMentor;
import Entities.AccountUser;

/**
 *
 * @author QUANG HAO
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class ProfileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
private static final long SerialVersionUID = 1L;
    private static final String UPLOAD_DIR = "img";

    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        System.out.println("session: " + request.getSession().getAttribute("account"));
        //o dây can set profile cho 3 thang : mentor, user, marketing.
        //vi nhom khong chia role chung len t buoc phai lam the
//        Account account = (Account) request.getSession().getAttribute("account");
//        System.out.println("acc: " + account);
        request.setAttribute("acc", request.getSession().getAttribute("account"));
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        AccountDAO accountDAO = new AccountDAO();
        String isNoti = "yes";
        request.setAttribute("isNoti", isNoti);
        
        //o dây can set profile cho 3 thang : mentor, user, marketing.
        //vi nhom khong chia role chung len t buoc phai lam the
        
//        Account oldAccount = (Account) request.getSession().getAttribute("account");
//        int accountID = oldAccount.getUser_id();//lay id cu
        String fullname = request.getParameter("fullname");
        //String lastName = request.getParameter("lastName");
//        boolean gender = true;
//        if (request.getParameter("gender").equalsIgnoreCase("female")) {
//            gender = false;
//        }
        int phone = Integer.parseInt(request.getParameter("phone"));
        String image = request.getParameter("avatar");
        String address = request.getParameter("address");
        String filename = uploadFile(request);
        

//        Account acc = (Account) request.getSession().getAttribute("account");
        // System.out.println("Phone: "+phone);
        // System.out.println("Name: "+fullname);
        // System.out.println("address: "+address);
//        acc.setUserid(accountID);
//        acc.setDisplay_name(fullname);
        //acc.setLastName(lastName);
        //acc.setGender(Gender.of(gender));
//        acc.setPhone(phone);
//        acc.setAddress(address);
//        acc.setAvatar(image);
//        // acc.setAvatar(filename);
//        accountDAO.editProfile(acc);
//
//        Account accountUpdate = accountDAO.getAccount(oldAccount.getEmail(), oldAccount.getPassword());
//        String a = oldAccount.getUsername();
//        request.getSession().setAttribute("account", accountUpdate);
//        Cookie usernameCookie = new Cookie("username", oldAccount.getUsername());
//        usernameCookie.setMaxAge(60 * 60 * 24 * 2);
//        Cookie passwordCookie = new Cookie("password", oldAccount.getPassword());
//        passwordCookie.setMaxAge(60 * 60 * 24 * 2);
//        response.addCookie(usernameCookie);
//        response.addCookie(passwordCookie);
//        request.getSession().setAttribute("account", oldAccount);
        response.sendRedirect("profile");

        // request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    public String uploadFile(HttpServletRequest request) throws IOException, ServletException {
        String fileName = "";
        try {
            Part filePart = request.getPart("photo");
            fileName = (String) getFileName(filePart);
            String applicationPath = request.getServletContext().getRealPath("");
            String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;
            InputStream inputStream = null;
            OutputStream outputStream = null;
            try {
                File outputFilePath = new File(basePath + fileName);
                inputStream = filePart.getInputStream();
                outputStream = new FileOutputStream(outputFilePath);
                int read = 0;
                final byte[] bytes = new byte[1024];
                while ((read = inputStream.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
            } catch (Exception e) {
                e.printStackTrace();
                fileName = "";
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
            }

        } catch (Exception e) {
            fileName = "";
        }
        return fileName;
    }

    public String getFileName(Part part) {
        final String partHeader = part.getHeader("content-disposition");
        System.out.println("*****partHeader :" + partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }

        return null;
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
        