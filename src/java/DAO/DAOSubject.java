/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Subject;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOSubject extends DBConnect {

    //getall
    public List<Subject> getAll() {
        String sql = "SELECT * FROM Subject";
        List<Subject> list = new ArrayList<>();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Subject s = new Subject(rs.getInt("subject_id"), rs.getString("subject_name"), rs.getString("image"), rs.getString("title"), rs.getString("description"), rs.getBoolean("status"));
                list.add(s);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //get by id
    public Subject getById(int id) {
        String sql = "SELECT * FROM Subject WHERE subject_id = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Subject s = new Subject(rs.getInt("subject_id"), rs.getString("subject_name"), rs.getString("image"), rs.getString("title"), rs.getString("description"), rs.getBoolean("status"));
                return s;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
public int deleteSubject(int id){
    int n=0;
    String sql ="delete from Subject\n "
            +"where subject_id =?";
    try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
           n= st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    return n;
}
    //add
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
   public static void main(String[] args) {
//        try {
//            // Nhập thông tin môn học từ người dùng
//            Scanner scanner = new Scanner(System.in);
//            System.out.print("Enter subject name: ");
//            String name = scanner.nextLine();
//            System.out.print("Enter subject image: ");
//            String image = scanner.nextLine();
//
//            // Khởi tạo đối tượng Subject
//            Subject newSubject = new Subject(name, image);
//
//            // Thêm môn học mới vào database
//            DAOSubject ds = new DAOSubject();
//            int result = ds.addSubject(newSubject);
//
//            // Xử lý kết quả trả về
//            if (result > 0)
//                System.out.println("Thêm môn học thành công!");
//            else
//                System.out.println("Thêm môn học thất bại!");
//        } catch (Exception ex) {
//            ex.printStackTrace();

           
            DAOSubject sdb = new DAOSubject();
            List<Subject> list = sdb.getAll();
            for (Subject subject : list) {
                System.out.println(subject);
       }
    
}

//        DAOSubject subjectDAO = new DAOSubject();
//        
//        // Example usage
//        int idToDelete = 7 ; // Replace with the actual ID you want to delete
//        int rowsAffected = subjectDAO.deleteSubject(idToDelete);
//        System.out.println("Rows deleted: " + rowsAffected);
    }

  
