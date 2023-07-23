/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author admin
 */
public class Visitors {

    private int visitor_id;
    private int user_id;
    private int role_id;
    private String access_date = formatDate();

    public Visitors() {
    }

    public Visitors(int user_id, int role_id) {
        this.user_id = user_id;
        this.role_id = role_id;
    }
    
    public Visitors(int visitor_id, int user_id, int role_id) {
        this.visitor_id = visitor_id;
        this.user_id = user_id;
        this.role_id = role_id;
    }

    public int getVisitor_id() {
        return visitor_id;
    }

    public void setVisitor_id(int visitor_id) {
        this.visitor_id = visitor_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getAccess_date() {
        return access_date;
    }


    public String formatDate() {
        String datenow = "";
        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        datenow = date.format(formatter);
        return datenow;
    }

}

