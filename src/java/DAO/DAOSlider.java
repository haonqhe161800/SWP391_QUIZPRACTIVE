/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.Slider;
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
            if(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
            
        }
        return 0;
    }

    public static void main(String[] args) {
        DAOSlider dsdb = new DAOSlider();
        System.out.println(dsdb.getCountSliderShow());
    }
}
