/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Signout", urlPatterns = {"/signout"})
public class Signout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        // Xóa thông tin đăng nhập của người dùng khỏi session
        session.invalidate();
        
        
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("JSESSIONID")) {
                    // Set the cookie's expiration time to a value in the past (i.e., 0)
                    cookie.setMaxAge(0);
                   response.addCookie(cookie);
                }
                if (cookie.getName().equals("cemail")) {
                    // Set the cookie's expiration time to a value in the past (i.e., 0)
                    cookie.setMaxAge(0);
                   response.addCookie(cookie);
                }
                if (cookie.getName().equals("cpass")) {
                    // Set the cookie's expiration time to a value in the past (i.e., 0)
                    cookie.setMaxAge(0);
                   response.addCookie(cookie);
                }
               
            }
        }
        //trang home
        response.sendRedirect("HomeController");
    }

}
