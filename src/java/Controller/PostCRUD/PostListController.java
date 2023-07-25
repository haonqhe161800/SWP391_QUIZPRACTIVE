package Controller.PostCRUD;

import DAO.DAOPost;
import Entities.AccountMarketer;
import Entities.Post;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class PostListController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //pagination
        String search = request.getParameter("search") == null ? "" : request.getParameter("search");
        String entry = request.getParameter("entry") == null || "".equals(request.getParameter("entry")) ? "10" : request.getParameter("entry");
        String currentPage = request.getParameter("index");
        AccountMarketer ama = (AccountMarketer) request.getSession().getAttribute("accountMarketer");
        DAOPost dpdb = new DAOPost();
        if(ama == null){
            request.setAttribute("notfound", "error");
            request.getRequestDispatcher("view/marketer/dashboard-postlist.jsp").forward(request, response);
        }
        
        else{
             try {
            //role id of marketer
            search = search.trim();
            int indexp = Integer.parseInt(entry);
            int totalPost = dpdb.getNumberPost(search,ama.getMakerter_id());
//            int totalPost = dpdb.getNumberPost(search,1);

            //assgin numberPage
            int numberPage = 0;

            if (indexp > totalPost) {
                numberPage = 1;
            } else {
                numberPage = (int) Math.ceil((double) totalPost / indexp);
            }

            //pagination current
            int index;
            if ("0".equals(currentPage) || currentPage == null) {
                index = 1;
            } else {
                index = Integer.parseInt(currentPage);
            }

            //view slider list follow some option
            List<Post> list = dpdb.getAllPost2(search, index, indexp, ama.getMakerter_id());
//            List<Post> list = dpdb.getAllPost2(search, index, indexp, 1);

            request.setAttribute("listpost", list);
            request.setAttribute("numberPage", numberPage);
            request.setAttribute("search", search);
            request.setAttribute("index", index);
            request.setAttribute("pagepost", "dashboardlistpost");
        } catch (NumberFormatException e) {
        }
        request.getRequestDispatcher("view/marketer/dashboard-postlist.jsp").forward(request, response);
        }
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
