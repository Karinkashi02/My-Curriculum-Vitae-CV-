/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cv.model;

public class Education {
    String degree;
    String institution;
    String gradYear;
    
    public Education(String dg, String it, String gY) {
        this.degree=dg;
        this.institution=it;
        this.gradYear=gY;
    }
    
    public String getDegree() {
        return degree;
    }
    
    public String getInstitution() {
        return institution;
    }
    
    public String getGradYear() {
        return gradYear;
    }
    
    public void setDegree(String degree) {
        this.degree = degree;
    }
    
    public void setInstitution(String institution) {
        this.institution = institution;
    }
    
    public void setGradYear(String gradYear) {
        this.gradYear = gradYear;
    }
}
