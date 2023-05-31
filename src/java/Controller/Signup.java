package Controller;

import DAO.DAOAdmin;
import DAO.DAOMarketer;
import DAO.DAOMentor;
import DAO.DAORole;
import DAO.DAOUser;
import Entities.AccountAdmin;
import Entities.AccountMarketer;
import Entities.AccountMentor;
import Entities.AccountUser;
import Entities.Role;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class Signup extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAORole drdb = new DAORole();
        ArrayList<Role> chooserolesignup = drdb.getRoleStudentandTeacher();
        
        request.setAttribute("chooserole", chooserolesignup);
        request.getRequestDispatcher("view/login/sign_up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String[] daybirth = request.getParameterValues("birth-day");
            String[] monthbirth = request.getParameterValues("birth-month");
            String[] yearbirth = request.getParameterValues("birth-year");

            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String gender = request.getParameter("gender");
            String cpass = request.getParameter("cpass");
            String role = request.getParameter("role");

            //kiem tra tk da ton tai chua
            AccountUser au = new DAOUser().checkExist(email);
            AccountMentor ame = new DAOMentor().checkExist(email);
            AccountMarketer am = new DAOMarketer().checkExist(email);
            AccountAdmin aa = new DAOAdmin().checkExist(email);

            if (pass.equals(cpass) == false) {
                request.setAttribute("messregis", "Confirm Password is not correct");
                request.getRequestDispatcher("view/login/sign_up.jsp").forward(request, response);
            } else {
                
                //neu chua
                if (aa == null && am == null && au != null) {
                    new DAOUser().insertUser(email, pass, randomdisplayName(), "10-10-2002", Integer.valueOf(gender), Integer.valueOf(role));

                } else if (aa == null && am == null && ame != null) {

                } //neu roi 
                else {
                    request.setAttribute("messregis", "Email already exist in system!");
                    request.getRequestDispatcher("view/login/sign_up.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            request.setAttribute("messregis", "Invalid input.Please Try again!");
            request.getRequestDispatcher("view/login/sign_up.jsp").forward(request, response);
        }

    }

    public String formatDOB(String day, String month, String year){
        return null;
    }
    
    public String randomdisplayName(){
        Random r = new Random();
        String res = "@displayname";
         StringBuilder sb = new StringBuilder(10);
        String sequencechar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        for (int i = 1; i < 10; i++) {
            int index = r.nextInt(sequencechar.length());
            char randomChar = sequencechar.charAt(index);
            sb.append(randomChar);
        }
          String randomString = sb.toString();
        return res+randomString;
    }

}
