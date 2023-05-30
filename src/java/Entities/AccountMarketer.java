/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;


/**
 *
 * @author admin
 */
public class AccountMarketer {

    private int makerter_id;
    private String email;
    private String password;
    private String descyourself;
    private String fullName;
    private String image;
    private String display_name;
    private String created_date;
    private String address;
    private String dob;
    private String academiclevel;
    private String modify_date;
    private int gender;
    private int role_id;

    public AccountMarketer() {
    }

    public AccountMarketer(int makerter_id, String email, String password, String descyourself, String fullName, String image, String display_name, String created_date, String address, String dob, String academiclevel, String modify_date, int gender, int role_id) {
        this.makerter_id = makerter_id;
        this.email = email;
        this.password = password;
        this.descyourself = descyourself;
        this.fullName = fullName;
        this.image = image;
        this.display_name = display_name;
        this.created_date = created_date;
        this.address = address;
        this.dob = dob;
        this.academiclevel = academiclevel;
        this.modify_date = modify_date;
        this.gender = gender;
        this.role_id = role_id;
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDisplay_name() {
        return display_name;
    }

    public void setDisplay_name(String display_name) {
        this.display_name = display_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

   
}
