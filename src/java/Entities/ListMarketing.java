/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author admin
 */
public class ListMarketing {
    private int lc_id, course_id;
    private String public_date;

    public ListMarketing() {
    }

    public ListMarketing(int lc_id, int course_id, String public_date) {
        this.lc_id = lc_id;
        this.course_id = course_id;
        this.public_date = public_date;
    }

    public int getLc_id() {
        return lc_id;
    }

    public void setLc_id(int lc_id) {
        this.lc_id = lc_id;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getPublic_date() {
        return public_date;
    }

    public void setPublic_date(String public_date) {
        this.public_date = public_date;
    }
    
}
