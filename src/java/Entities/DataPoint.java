/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author admin
 */
public class DataPoint {
    
    private String label;
    private int y;

    public DataPoint(String label, int y) {
        this.label = label;
        this.y = y;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    
}
