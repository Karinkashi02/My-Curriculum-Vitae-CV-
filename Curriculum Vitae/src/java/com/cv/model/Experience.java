/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cv.model;

public class Experience {
    String jobTitle;
    String company;
    String duration;
    String description;
    
    public Experience(String jt, String cp, String dr, String dc) {
        this.jobTitle=jt;
        this.company=cp;
        this.duration=dr;
        this.description=dc;
    }
    
    public String getJobTitle() {
        return jobTitle;
    }
    
    public String getCompany() {
        return company;
    }
    
    public String getDuration() {
        return duration;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }
    
    public void setCompany(String company) {
        this.company = company;
    }
    
    public void setDuration(String duration) {
        this.duration = duration;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
}
