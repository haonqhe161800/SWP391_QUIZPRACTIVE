
package DAO;

import Entities.AccountMentor;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAOMentor extends DBConnect {

    //check emailInput & password
    public AccountMentor checkLogin(String emailInput, String password) {

        String sql = "SELECT [mentor_id]\n"
                + "      ,[email]\n"
                + "      ,[password]\n"
                + "      ,[describe_yourself]\n"
                + "      ,[fullname]\n"
                + "      ,[image]\n"
                + "      ,[display_name]\n"
                + "      ,[created_date]\n"
                + "      ,[address]\n"
                + "      ,[date_of_birth]\n"
                + "      ,[academic_level]\n"
                + "      ,[modify_date]\n"
                + "      ,[gender]\n"
                + "      ,[specialize]\n"
                + "      ,[role_id]\n"
                + "  FROM [QUIZ_PRACTICE].[dbo].[Mentor_type] WHERE email = ? AND password = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, emailInput);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                AccountMentor ame = new AccountMentor(
                        rs.getInt("mentor_id"),
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
                return ame;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String args[]) {
         DAOMentor dudb = new DAOMentor();
        AccountMentor au = dudb.checkLogin("TranQuyBan@gmail.com", "12345");
        
        System.out.println(au.getDisplay_name());
    }
}
