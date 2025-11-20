/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cv.model;

/**
 *
 * @author Xander
 */
public class Skill {
    private String Sname;
    private int Slevel;
    
    public Skill(String Snm, int Slv) {
        this.Sname = Snm;
        this.Slevel = Slv;
    }
    
    public String getSName() {
        return Sname;
    }
    
    public void setSName(String name) {
        this.Sname = name;
    }
    
    public int getSLevel() {
        return Slevel;
    }
    
    public void setSLevel(int level) {
        this.Slevel = level;
    }
}