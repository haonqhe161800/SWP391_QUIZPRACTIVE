/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.NumberVisitors;
import Entities.Visitors;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOVisitors extends DBConnect{
    
    public int addVisitors(Visitors vis) {
        int n = 0;
        String sql = "Insert into Visitors([user_id], role_id, access_date)"
                + " values (?, ?, ?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, vis.getUser_id());
            pre.setInt(2, vis.getRole_id());
            pre.setString(3, vis.getAccess_date());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public Vector<NumberVisitors> getAll(String sql) {
        Vector<NumberVisitors> vector = new Vector<NumberVisitors>();
        ResultSet rs = this.getData(sql);
        try {
            while(rs.next()) {
                String access_date = rs.getString(1);
                int quantity = rs.getInt(2);
                NumberVisitors nVis = new NumberVisitors(access_date, quantity);
                vector.add(nVis);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOVisitors.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }
}
