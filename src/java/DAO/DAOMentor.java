package DAO;

import Controller.Mentor;
import Entities.AccountMentor;
import Entities.Course;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
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

    //check exist
    public AccountMentor checkExist(String emailInput) {
        String sql = "SELECT * FROM [Mentor_type] WHERE email = ?";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, emailInput);
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
//                        rs.getString("specialize"),
                        rs.getInt("role_id")
                );
                return ame;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //INSERT AccountMentor
    public void insertMentor(String emailInput, String password, String fullname, String displayname, String dob, int gender, int roleid) {
        String sql = "INSERT INTO [dbo].[Mentor_type]\n"
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

        String sql = "SELECT * FROM [Mentor_type] WHERE email = ?";
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
        String sql = "  UPDATE [dbo].[Mentor_type]\n"
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
    
          //update profile(fullname,describle yourself, image, display_name,address,modifiy date,dob, academic level, gender)
    public void updateProfile(int id,String descyouself, String fullname, String image, String displayname, String address, String dob, String academiclevel, String modifydate, int gender) {
        String sql = "UPDATE [dbo].[Mentor_type]\n"
                + "   SET [describe_yourself] = ?\n"
                + "      ,[fullname] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[display_name] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[date_of_birth] = ?\n"
                + "      ,[academic_level] = ?\n"
                + "      ,[modify_date] = ?\n"
                + "      ,[gender] = ?\n"
                + " WHERE mentor_id = ?";

        try {
            PreparedStatement st = conn.prepareCall(sql);
            st.setString(1, descyouself);
            st.setString(2, fullname);
            st.setString(3, image);
            st.setString(4, displayname);
            st.setString(5, address);
            st.setString(6, dob);
            st.setString(7, academiclevel);
            st.setString(8, modifydate);
            st.setInt(9, gender);
            st.setInt(10, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    
    public Vector<AccountMentor> getAll(String sql) {
        Vector<AccountMentor> vector = new Vector<AccountMentor>();
        ResultSet rs = this.getData(sql);
        try {
            while (rs.next()) {
                int mentor_id = rs.getInt(1);
                String email = rs.getString(2);
                String password = rs.getString(3);
                String describe_yourself = rs.getString(4);
                String fullname = rs.getString(5);
                String image = rs.getString(6);
                String display_name = rs.getString(7);
                String created_date = rs.getString(8);
                String address = rs.getString(9);
                String date_of_birth = rs.getString(10);
                String academic_level = rs.getString(11);
                String modify_date = rs.getString(12);
                int gender = rs.getInt(13);
                String specialize = rs.getString(14);
                int role_id = rs.getInt(15);
                AccountMentor mentor = new AccountMentor(mentor_id, email, password, describe_yourself, fullname, image, display_name, created_date, address, date_of_birth, academic_level, modify_date, gender, specialize, role_id);
                vector.add(mentor);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }
    
    public int getEndPage(String sql) {
        int endPage = 0;
        Vector<AccountMentor> vector = getAll(sql);
        endPage = vector.size() / 6;
        if (vector.size() % 6 != 0) {
            endPage++;
        }
        return endPage;
    }


//delete
    public void deleteMentor(int mentorId) {
        String sql = "DELETE FROM [Mentor_type] WHERE mentor_id = ?";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, mentorId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//    public static void main(String args[]) {
//        DAOMentor dudb = new DAOMentor();
//        AccountMentor au = dudb.checkLogin("TranQuyBan@gmail.com", "12345");
//
//        System.out.println(au.getDisplay_name());
//    }
    
//    public static void main(String[] args) {
//        DAOMentor dao = new DAOMentor();
//        int n = dao.getEndPage("select * from Mentor_type offset 1 rows fetch next 6 rows only");
//        System.out.println(n);
//    }
}
