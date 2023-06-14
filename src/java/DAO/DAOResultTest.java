/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.ResultTest;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOResultTest extends DBConnect{
    
    public int addResultTest(ResultTest resulttest) {
        int n = 0;
        String sql = "Insert into products(user_id, course_id, status, score)"
                + " values (?, ?, ?, ?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, resulttest.getUser_id());
            pre.setInt(2, resulttest.getCourse_id());
            pre.setString(3, resulttest.getStatus());
            pre.setDouble(4, resulttest.getGrade());

            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }
    
}
