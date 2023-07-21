/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.AccountUser;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOErrol extends DBConnect {

    LocalDate date = LocalDate.now();

    public int errolCourse(AccountUser au, int course_id) {
        int n = 0;
        String sql = "insert into Errol "
                + "values (" + au.getUser_id()
                + ", " + course_id
                + ", '" + date + "')";
        try {
            Statement statement = conn.createStatement();
            n = statement.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public int checkErrol(AccountUser au, int course_id) {
        int n = 0;
        ResultSet rs = getData("select * from Errol where user_id = " + au.getUser_id() + " and course_id = " + course_id);
        try {
            if(rs.next()) {
                n = 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOErrol.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int getNumberErrol(AccountUser au, int course_id) {
        int n = 0;
        ResultSet rsErrol = getData("select * from Errol");
        if (au != null) {
            try {
                while (rsErrol.next()) {
                    if (rsErrol.getInt(1) == au.getUser_id() && rsErrol.getInt(2) == course_id) {
                        n++;
                    }
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return n;
    }

}


