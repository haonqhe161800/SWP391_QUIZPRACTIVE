/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Subject;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOSubject extends DBConnect{
    
    public int addSubject(Subject subject) {
        int n = 0;
        String sql = "Insert into [Subject]([subject_name], [image])"
                + " values (?, ?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, subject.getSubject_name());
            pre.setString(2, subject.getImage());
            //run
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }
}
