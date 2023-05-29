/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author admin
 */
public class AccountMaketer {

    private int mentor_id;
    private String email, password, image, display_name, create_date, address, date_of_birth;
    private String role = "makerting";

    public AccountMaketer() {
    }

    public AccountMaketer(int mentor_id, String email, String password, String image, String display_name, String create_date, String address, String date_of_birth, String role) {
        this.mentor_id = mentor_id;
        this.email = email;
        this.password = password;
        this.image = image;
        this.display_name = display_name;
        this.create_date = create_date;
        this.address = address;
        this.date_of_birth = date_of_birth;
        role = "makerting";
    }

    public int getMentor_id() {
        return mentor_id;
    }

    public void setMentor_id(int mentor_id) {
        this.mentor_id = mentor_id;
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

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    
}
