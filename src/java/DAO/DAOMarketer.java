/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package DAO;

import Entities.AccountMarketer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAOMarketer extends DBConnect{

    public AccountMarketer checkLogin(String emailInput, String password){
        String sql = "SELECT[marketer_id]\n" +
"      ,[email]\n" +
"      ,[password]\n" +
"      ,[describe_yourself]\n" +
"      ,[fullname]\n" +
"      ,[image]\n" +
"      ,[display_name]\n" +
"      ,[created_date]\n" +
"      ,[address]\n" +
"      ,[date_of_birth]\n" +
"      ,[academic_level]\n" +
"      ,[modify_date]\n" +
"      ,[gender]\n" +
"      ,[role_id]\n" +
"  FROM [QUIZ_PRACTICE].[dbo].[Marketer_type] WHERE email = ? AND password = ?";
        
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, emailInput);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                AccountMarketer am = new AccountMarketer(
                                            rs.getInt("marketer_id"),
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
                return am;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public static void main(String args[]) {
         DAOMarketer dudb = new DAOMarketer();
        AccountMarketer au = dudb.checkLogin("TranThiB@gmail.com", "12345");
        
        System.out.println(au.getDisplay_name());
    }
}
