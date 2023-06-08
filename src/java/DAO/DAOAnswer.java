/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Entities.Answer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import module.DBConnect;
/**
 *
 * @author admin
 */
public class DAOAnswer extends DBConnect{
    
    public Vector<Answer> getAll(String sql) {
        Vector<Answer> vector = new Vector<Answer>();
        ResultSet rs = this.getData(sql);
        try {
            while (rs.next()) {
                int answer_id = rs.getInt(1);
                String answer_name = rs.getString(2);
                int is_correct = rs.getInt(3);
                int question_id = rs.getInt(4);
                Answer answer = new Answer(question_id, answer_name, is_correct, question_id);
                vector.add(answer);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }
    
}
