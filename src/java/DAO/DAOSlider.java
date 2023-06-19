/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Slider;
import Entities.Subject;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import module.DBConnect;

/**
 *
 * @author Admin
 */
public class DAOSlider extends DBConnect {

    public List<Slider> getAll() {
        List<Slider> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [slider_id]\n"
                + "      ,[slider_url]\n"
                + "      ,[content]\n"
                + "      ,[note]\n"
                + "      ,[isShow]\n"
                + "      ,[subject_id]\n"
                + "  FROM [QUIZ_PRACTICE].[dbo].[Slider]";

        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Slider s = new Slider(rs.getInt("slider_id"), rs.getString("slider_url"), rs.getString("content"), rs.getString("note"), rs.getBoolean("isShow"), rs.getInt("subject_id"));
                list.add(s);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //count slidershow
    public int getCountSliderShow() {
        String sql = "  SELECT COUNT (*) FROM Slider";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    //count slidershow
    public int getSearchSlider(String search) {
        String sql = "  SELECT COUNT (*) FROM Slider WHERE content LIKE ?";
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

    //getAll verision 2
    public List<Slider> getAll2(String key, int offset, int base) {
        List<Slider> list = new ArrayList<>();
        String sql = "SELECT s.slider_id,s.slider_url,s.content,s.note,s.isShow ,s.subject_id,su.subject_id,su.subject_name,su.image,su.tittle,su.description,su.status FROM Slider s LEFT JOIN Subject su on s.subject_id = su.subject_id"
                + "   WHERE s.content LIKE ? ORDER BY s.slider_id OFFSET ? ROW FETCH NEXT " + base + " ROWS ONLY";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, "%" + key + "%");
            st.setInt(2, (offset - 1) * base);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Subject su = new Subject(rs.getInt("subject_id"), rs.getString("subject_name"), rs.getString("image"), rs.getString("tittle"), rs.getString("description"), rs.getBoolean("status"));
                Slider s = new Slider(rs.getInt("slider_id"), rs.getString("slider_url"), rs.getString("content"), rs.getString("note"), rs.getBoolean("isShow"), rs.getInt("subject_id"), su);
                list.add(s);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        DAOSlider dsdb = new DAOSlider();
        List<Slider> list = dsdb.getAll2("C",1,3);
        for (Slider slider : list) {
            System.out.println(slider);
        }
    }
}
