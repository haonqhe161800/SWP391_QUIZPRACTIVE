/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.PostCRUD;

import DAO.DAOPost;
import Entities.AccountMarketer;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "AddPostController", urlPatterns = {"/addpost"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 3,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)
public class AddPostController extends HttpServlet {

    public final String FAILURE = "addpost";
    public final String SUCCESS = "dashboardlistpost";
    private final int MAX_LENGTH = 250;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("pagepost", "addpost");
        request.getRequestDispatcher("view/marketer/dashboard-addpost.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "";
        DAOPost pdb = new DAOPost();
        String tittle = request.getParameter("title");
        String shortcontent = request.getParameter("shortcontent");
        String content = request.getParameter("message");
        String blog = request.getParameter("blog");
        String subject = request.getParameter("subject");
        AccountMarketer  ama = (AccountMarketer) request.getSession().getAttribute("accountMarketer");
        
        String fileName = "";
        try {
            Part thumbnailFile = request.getPart("upfile");
            String realPath = getServletContext().getRealPath("/assets/images/thumbnail-post");

            if (thumbnailFile != null && thumbnailFile.getSize() > 0) {
                fileName = Paths.get(thumbnailFile.getSubmittedFileName()).getFileName().toString();
            } else {
                fileName = "broken-image.jpg";
            }

            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }
            if (thumbnailFile != null && thumbnailFile.getSize() > 0) {
                thumbnailFile.write(realPath + "/" + fileName);
            }

            //check subject not -1
            if (("-1".equals(subject) || "-1".equals(blog)) ) {
                url = FAILURE;
                request.setAttribute("message1", "errorrrrr");
            } else if(!checkLengthContent(shortcontent, content)){
                url = FAILURE;
                request.setAttribute("message2", "error");
            } 
            else {
                url = SUCCESS;
                //execute insert post
                pdb.insertPost(ama.getMakerter_id(), tittle, shortcontent, content, Integer.parseInt(blog), Integer.parseInt(subject), "pending", fileName);

                //test execute
//                pdb.insertPost(1, tittle, shortcontent, content, Integer.parseInt(blog), Integer.parseInt(subject), "pending", fileName);

            }

        } catch (ServletException | IOException | NumberFormatException e) {
            
        }
       response.sendRedirect(url);
    }

    //validation short content (250 not null)
    //validation content (not null)
    public boolean checkLengthContent(String shortcontent, String content) {
        if (shortcontent.length() > 250) {
            return false;
        }
        else if(content.trim().isEmpty()){
            return false;
        }
        return true;
    }

}
