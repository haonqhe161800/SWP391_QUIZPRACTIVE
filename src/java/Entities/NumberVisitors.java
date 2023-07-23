/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author admin
 */
public class NumberVisitors {
    private String access_date;
    private int quantity;

    public NumberVisitors(String access_date, int quantity) {
        this.access_date = access_date;
        this.quantity = quantity;
    }

    public String getAccess_date() {
        return access_date;
    }

    public void setAccess_date(String access_date) {
        this.access_date = access_date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
