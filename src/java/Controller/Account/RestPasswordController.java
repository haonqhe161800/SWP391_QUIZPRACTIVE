
package Controller.Account;

import DAO.DAOAdmin;
import DAO.DAOMarketer;
import DAO.DAOMentor;
import DAO.DAOUser;
import Entities.AccountAdmin;
import Entities.AccountMarketer;
import Entities.AccountMentor;
import Entities.AccountUser;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Random;


public class RestPasswordController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/forgotpsw/forgotpassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String newpass = getRandomNumberString();

        DAOUser dudb = new DAOUser();
        DAOMarketer dmdb = new DAOMarketer();
        DAOMentor dmedb = new DAOMentor();
        DAOAdmin dadb = new DAOAdmin();

//        
//        //initial parameter each role in database
        AccountUser au = dudb.checkExist(email);
        AccountMentor ame = dmedb.checkExist(email);
        AccountMarketer am = dmdb.checkExist(email);
        AccountAdmin aa = dadb.checkExist(email);
        
        request.getRequestDispatcher("view/login/sign_in.jsp").forward(request, response);

    }

    public static String getRandomNumberString() {
        // It will generate 6 digit random Number.
        // from 0 to 999999
        Random rnd = new Random();
        int number = rnd.nextInt(999999);

        // this will convert any number sequence into 6 character.
        return String.format("%06d", number);
    }
}
