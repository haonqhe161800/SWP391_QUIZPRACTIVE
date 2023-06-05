/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Blog;
import Entities.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAOBlog extends DBConnect {

    //count
    public int countBlog() {
        String sql = "SELECT COUNT(*) FROM Blog";
        int total = 0;

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return total;
    }
    
    //getbyId
    public Blog getById(int id){
        String sql = "SELECT * FROM Blog WHERE blog_id = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Blog b = new Blog(rs.getInt("blog_id"), rs.getInt("subject_id"), rs.getString("blog_name"));
                return b;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return null;
    }
}
