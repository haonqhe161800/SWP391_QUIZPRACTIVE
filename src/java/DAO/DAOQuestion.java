/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Entities.Question;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import module.DBConnect;

/**
 *
 * @author admin
 */
public class DAOQuestion extends DBConnect{
    
    public Vector<Question> getAll(String sql) {
        Vector<Question> vector = new Vector<Question>();
        ResultSet rs = this.getData(sql);
        try {
            while (rs.next()) {
                int question_id = rs.getInt(1);
                String question_name = rs.getString(2);
                int course_id = rs.getInt(3);
                Question question = new Question(question_id, question_name, course_id);
                vector.add(question);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }
    
}
