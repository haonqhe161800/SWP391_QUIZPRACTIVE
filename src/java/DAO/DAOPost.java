/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAOPost extends DBConnect {
    
    //getbyid
    public Post getById(int id){
        String sql = "SELECT * FROM Post WHERE post_id = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Post p = new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"),rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getBoolean("status"));
               return p;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    //latest post
    public Post getTop1Post(){
        String sql = "SELECT TOP(1)* FROM Post ORDER BY post_id DESC";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Post p = new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"),rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getBoolean("status"));
               return p;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    
    // pagination
    public List<Post> listPostfollowPage(int offset, int fetech) {
        List<Post> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Post\n"
                + "ORDER BY post_id\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY;";
        
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, offset);
            st.setInt(2, fetech);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Post p = new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"),rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getBoolean("status"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    
    public static void main(String[] args) {
        DAOPost dpdb = new DAOPost();
        List<Post> list = dpdb.listPostfollowPage(0, 3);
        for (Post post : list) {
            System.out.println(post.getShort_content());
        }
    }

}
