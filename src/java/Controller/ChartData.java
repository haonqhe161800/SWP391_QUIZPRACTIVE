/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOVisitors;
import Entities.DataPoint;
import Entities.NumberVisitors;
import Entities.Visitors;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Vector;


/**
 *
 * @author admin
 */
@WebServlet(name = "ChartData", urlPatterns = {"/ChartData"})
public class ChartData extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAOVisitors daoVis = new DAOVisitors();

        ArrayList<DataPoint> dataPoints = new ArrayList<>();
        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        Vector<NumberVisitors> vectorNVis = daoVis.getAll("select access_date, COUNT(access_date) from Visitors group by access_date");
//        int month = Integer.parseInt(request.getParameter("month"));
//        int year = Integer.parseInt(request.getParameter("year"));
//        if(request.getParameter("month") == null && request.getParameter("year") == null) {
//            month = date.getMonthValue();
//            year = date.getYear();
//        }
        ArrayList<LocalDate> days = getAllDaysInMonth(2023, 7);
        for (LocalDate day : days) {
            for (NumberVisitors v : vectorNVis) {
                if (day.format(formatter).equals(v.getAccess_date())) {
                    dataPoints.add(new DataPoint(v.getAccess_date(), v.getQuantity()));
                } else {
                    dataPoints.add(new DataPoint(day.format(formatter), 0));
                }
            }
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Gửi dữ liệu JSON về cho biểu đồ
        try ( PrintWriter out = response.getWriter()) {
            out.println(generateJson(dataPoints));
        }
        
//        response.sendRedirect("Dashboard");
    }

    private String generateJson(ArrayList<DataPoint> dataPoints) {
        StringBuilder json = new StringBuilder("[");
        for (int i = 0; i < dataPoints.size(); i++) {
            DataPoint dataPoint = dataPoints.get(i);
            json.append("{\"label\":\"").append(dataPoint.getLabel()).append("\",\"y\":").append(dataPoint.getY()).append("}");
            if (i < dataPoints.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");
        return json.toString();
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

    public static ArrayList<LocalDate> getAllDaysInMonth(int year, int month) {
        ArrayList<LocalDate> days = new ArrayList<>();
        LocalDate date = LocalDate.of(year, month, 1);

        // Lặp qua từng ngày trong tháng cho đến khi tháng khác tháng hiện tại
        while (date.getMonthValue() == month) {
            days.add(date);
            date = date.plusDays(1);
        }

        return days;
    }
}
