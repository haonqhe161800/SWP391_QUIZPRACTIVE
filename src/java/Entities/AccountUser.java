/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

import java.sql.Date;

/**
 *
 * @author QUANG HAO
 */
public class AccountUser {

    private int user_id;
    private String email;
    private String password;
    private String image;
    private String display_name;
    private String created_date;
    private String address;
    private Date birth;
    private String role = "user";

    public AccountUser() {
    }

    public AccountUser(int user_id, String email, String password, String image, String display_name, String created_date, String address, Date birth, String role) {
        this.user_id = user_id;
        this.email = email;
        this.password = password;
        this.image = image;
        this.display_name = display_name;
        this.created_date = created_date;
        this.address = address;
        this.birth = birth;
        role = "user";
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDisplay_name() {
        return display_name;
    }

    public void setDisplay_name(String display_name) {
        this.display_name = display_name;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

}
