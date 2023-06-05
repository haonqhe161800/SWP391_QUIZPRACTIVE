/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
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

/**
 *
 * @author QUANG HAO
 */
//@MultipartConfig(
//        fileSizeThreshold = 1024 * 1024 * 10,
//        maxFileSize = 1024 * 1024 * 50,
//        maxRequestSize = 1024 * 1024 * 100
//)
public class ProfileController extends HttpServlet {

//private static final long SerialVersionUID = 1L;
//    private static final String UPLOAD_DIR = "img";

    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        request.getRequestDispatcher("view/profile.jsp").forward(request, response);

    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


         request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

//    public String uploadFile(HttpServletRequest request) throws IOException, ServletException {
//        String fileName = "";
//        try {
//            Part filePart = request.getPart("photo");
//            fileName = (String) getFileName(filePart);
//            String applicationPath = request.getServletContext().getRealPath("");
//            String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;
//            InputStream inputStream = null;
//            OutputStream outputStream = null;
//            try {
//                File outputFilePath = new File(basePath + fileName);
//                inputStream = filePart.getInputStream();
//                outputStream = new FileOutputStream(outputFilePath);
//                int read = 0;
//                final byte[] bytes = new byte[1024];
//                while ((read = inputStream.read(bytes)) != -1) {
//                    outputStream.write(bytes, 0, read);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                fileName = "";
//            } finally {
//                if (inputStream != null) {
//                    inputStream.close();
//                }
//                if (outputStream != null) {
//                    outputStream.close();
//                }
//            }
//
//        } catch (Exception e) {
//            fileName = "";
//        }
//        return fileName;
//    }
//
//    public String getFileName(Part part) {
//        final String partHeader = part.getHeader("content-disposition");
//        System.out.println("*****partHeader :" + partHeader);
//        for (String content : part.getHeader("content-disposition").split(";")) {
//            if (content.trim().startsWith("filename")) {
//                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
//            }
//        }
//
//        return null;
//    }

    @Override
public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
        