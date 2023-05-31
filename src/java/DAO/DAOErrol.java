/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.AccountUser;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOErrol extends DBConnect {
    
    LocalDate date = LocalDate.now();
    
    public int addProductByPre(int course_id, AccountUser au) {
        int n = 0;
        String sql = "insert into Errol "
                + "values (" + course_id
                + ", " +  au.getUser_id()
                + ", '" + date + "')";
         try {
            Statement statement = conn.createStatement();
            n = statement.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
}
