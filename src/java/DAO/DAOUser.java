/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.AccountUser;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import module.DBConnect;

public class DAOUser extends DBConnect {

    //check emailInput & password
    public AccountUser checkLogin(String emailInput, String password) {

        String sql = "SELECT * FROM User_type WHERE email = ? AND password = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, emailInput);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                AccountUser au = new AccountUser(
                        rs.getInt("user_id"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("describe_yourself"),
                        rs.getString("fullname"),
                        rs.getString("image"),
                        rs.getString("display_name"),
                        rs.getString("created_date"),
                        rs.getString("address"),
                        rs.getString("date_of_birth"),
                        rs.getString("academic_level"),
                        rs.getString("modify_date"),
                        rs.getInt("gender"),
                        rs.getInt("role_id")
                );
                return au;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //check exist
    public AccountUser checkExist(String emailInput) {
        String sql = "SELECT * FROM User_type WHERE email = ?";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, emailInput);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                AccountUser au = new AccountUser(
                        rs.getInt("user_id"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("describe_yourself"),
                        rs.getString("fullname"),
                        rs.getString("image"),
                        rs.getString("display_name"),
                        rs.getString("created_date"),
                        rs.getString("address"),
                        rs.getString("date_of_birth"),
                        rs.getString("academic_level"),
                        rs.getString("modify_date"),
                        rs.getInt("gender"),
                        rs.getInt("role_id")
                );
                return au;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //INSERT AccountUser
    public void insertUser(String emailInput, String password, String displayname, String dob, int gender, int roleid) {
        String sql = "INSERT INTO [dbo].[User_type]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[display_name]\n"
                + "           ,[date_of_birth]\n"
                + "           ,[gender]\n"
                + "           ,[role_id])\n"
                + "     VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
             PreparedStatement st = conn.prepareStatement(sql);
             st.setString(1,emailInput);
             st.setString(2,password);
             st.setString(3,displayname);
             st.setString(4,dob);
             st.setInt(5,gender);
             st.setInt(6,roleid);
             st.executeUpdate();
        }
        catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    

    public static void main(String[] args) {
        DAOUser dudb = new DAOUser();
        AccountUser au = dudb.checkLogin("ngohuunam2002@gmail.com", "123456789");
        System.out.println(au.getDisplay_name());
    }
}
