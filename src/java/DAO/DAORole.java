/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAORole extends DBConnect {

    //view role student and teacher
    public ArrayList<Role> getRoleStudentandTeacher() {
        String sql = "  SELECT * FROM Role WHERE role_id IN(2,4)";
        ArrayList list = new ArrayList();

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Role r = new Role(rs.getInt("role_id"), rs.getString("role_name"));
                list.add(r);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
