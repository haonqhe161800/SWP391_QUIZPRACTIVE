/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.AccountMarketer;
import Entities.Blog;
import Entities.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAOPost extends DBConnect {

    //getbyid
    public Post getById(int id) {
        String sql = "SELECT * FROM Post p INNER JOIN Marketer_type ma ON p.marketer_id = ma.marketer_id\n"
                + "INNER JOIN Blog b ON p.blog_id = b.blog_id WHERE p.post_id = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Blog b = new Blog(rs.getInt("blog_id"), rs.getInt("subject_id"), rs.getString("blog_name"));
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
                        rs.getInt("role_id"));
                Post p = new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"), rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getString("status"), b, am);
                return p;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
//    getByid and except id of blog detail current
    public ArrayList<Post> ListPostExceptCurrent(int id){
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT TOP(5)* FROM Post p INNER JOIN Marketer_type ma ON p.marketer_id = ma.marketer_id INNER JOIN Blog b ON p.blog_id = b.blog_id WHERE p.post_id != ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Blog b = new Blog(rs.getInt("blog_id"), rs.getInt("subject_id"), rs.getString("blog_name"));
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
                        rs.getInt("role_id"));
                list.add(new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"), rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getString("status"), b, am));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    //latest post
    public Post getTop1Post() {
        String sql = "SELECT TOP(1)* FROM Post p INNER JOIN Marketer_type ma ON p.marketer_id = ma.marketer_id\n"
                + "INNER JOIN Blog b ON p.blog_id = b.blog_id ORDER BY p.post_id DESC";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Blog b = new Blog(rs.getInt("blog_id"), rs.getInt("subject_id"), rs.getString("blog_name"));
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
                        rs.getInt("role_id"));
                Post p = new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"), rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getString("status"), b, am);
                return p;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    //select blog list
    public ArrayList<Post> selectBlogList(String sort, String keyname, int offset) {
        String sortby = "";
        switch (sort) {
            case "1":
                sortby = "ORDER BY p.post_id DESC";
                break;
            case "2":
                sortby = "ORDER BY p.posted_date DESC";
                break;
            default:
                sortby = "ORDER BY p.post_id ASC";

        }
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT * FROM Post p INNER JOIN Marketer_type ma ON p.marketer_id = ma.marketer_id\n"
                + "INNER JOIN Blog b ON p.blog_id = b.blog_id\n"
                + "WHERE b.blog_name LIKE ? " + sortby + "  OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, "%" + keyname + "%");
            st.setInt(2, (offset - 1) * 3);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt("blog_id"), rs.getInt("subject_id"), rs.getString("blog_name"));
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
                        rs.getInt("role_id"));
                list.add(new Post(rs.getInt("post_id"), rs.getInt("marketer_id"), rs.getInt("blog_id"), rs.getDate("posted_date"), rs.getDate("updated_date"), rs.getString("image"), rs.getString("content"), rs.getString("short_content"), rs.getString("status"), b, am));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    //get number of post
    public int getNumberPost(String search) {
        String sql = "SELECT COUNT(*) FROM Post p INNER JOIN Marketer_type ma ON p.marketer_id = ma.marketer_id\n"
                + "INNER JOIN Blog b ON p.blog_id = b.blog_id\n"
                + "WHERE b.blog_name LIKE ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, "%" + search + "%");
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }
    
    

    public static void main(String[] args) {
        DAOPost dpdb = new DAOPost();
//        System.out.println(dpdb.getNumberPost("C"));
//        ArrayList<Post> list = dpdb.selectBlogList("1", "", 1);
//        for (Post post : list) {
//            System.out.println(post);
//        }

//        Post p = dpdb.getTop1Post();
//        System.out.println(p.getB().getBlog_name());

        Post p = dpdb.getById(13);
        System.out.println(p.getStatus());
    }

}
