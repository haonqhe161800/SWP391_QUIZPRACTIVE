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
    public void insertUser(String emailInput, String password, String fullname, String displayname, String dob, int gender, int roleid) {
        String sql = "INSERT INTO [dbo].[User_type]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[fullname]\n"
                + "           ,[display_name]\n"
                + "           ,[date_of_birth]\n"
                + "           ,[gender]\n"
                + "           ,[role_id])\n"
                + "     VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, emailInput);
            st.setString(2, password);
            st.setString(3, fullname);
            st.setString(4, displayname);
            st.setString(5, dob);
            st.setInt(6, gender);
            st.setInt(7, roleid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //CHECK EMAIL
    public boolean checkEmail(String emailInput) {

        String sql = "SELECT * FROM [User_type] WHERE email = ?";
        try {
            PreparedStatement st = conn.prepareCall(sql);
            st.setString(1, emailInput);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    //update password
    public void updatePasswordByName(String pass,String emailInput) {
        String sql = "  UPDATE [dbo].[User_type]\n"
                + "   SET [password] = ? \n"
                + " WHERE [email] = ?";
        
        try {
            PreparedStatement st = conn.prepareCall(sql);
            st.setString(1,pass);
            st.setString(2,emailInput);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public static void main(String[] args) {
        DAOUser dudb = new DAOUser();
        AccountUser au = dudb.checkLogin("ngohuunam2002@gmail.com", "123456789");
        System.out.println(au.getDisplay_name());
    }
}
