/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cv.model;
import java.util.ArrayList;
import java.util.List;

public class Profile {
    String name;
    String designation;
    String email;
    String number;
    String address;
    String area;
    String state;
    String image;
    String about;
    String color;
    List<Experience> experiences;
    List<Education> educations;
    List<Skill> skills;

    public Profile(String nm, String dg, String em, String num, String ad,
                    String ar, String st, String im, String ab, String cl) {
        this.name=nm;
        this.designation=dg;
        this.email=em;
        this.number=num;
        this.address=ad;
        this.area=ar;
        this.state=st;
        this.image=im;
        this.about=ab;
        this.color=cl;
        this.experiences = new ArrayList<>();
        this.educations = new ArrayList<>();
        this.skills = new ArrayList<>();
    }
    
    public String getName() {
        return name;
    }
    
    public String getDesignation() {
        return designation;
    }
    
    public String getEmail() {
        return email;
    }
    
    public String getNumber() {
        return number;
    }
    
    public String getAddress() {
        return address;
    }    
    
    public String getArea() {
        return area;
    }    
        
    public String getState() {
        return state;
    }    
    
    public String getImage() {
        return image;
    }
    
    public String getAbout() {
        return about;
    }  
    
    public String getColor() {
        return color;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public void setDesignation(String designation) {
        this.designation = designation;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public void setNumber(String number) {
        this.number = number;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public void setArea(String area) {
        this.area = area;
    }
    
    public void setState(String state) {
        this.state = state;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    
    public void setAbout(String about) {
        this.about = about;
    }
    
    public void setColor(String color) {
        this.color = color;
    }
    
    public List<Experience> getExperiences() {
        return experiences;
    }
    
    public void setExperiences(List<Experience> experiences) {
        this.experiences = experiences;
    }
    
    public void addExperience(Experience experience) {
        this.experiences.add(experience);
    }
    
    public void removeExperience(Experience experience) {
        this.experiences.remove(experience);
    }
    
    public List<Education> getEducations() {
        return educations;
    }
    
    public void setEducations(List<Education> educations) {
        this.educations = educations;
    }
    
    public void addEducation(Education education) {
        this.educations.add(education);
    }
    
    public void removeEducation(Education education) {
        this.educations.remove(education);
    }
    
    public List<Skill> getSkills() {
        return skills;
    }
    
    public void setSkills(List<Skill> skills) {
        this.skills = skills;
    }
    
    public void addSkill(Skill skill) {
        this.skills.add(skill);
    }
    
    public void removeSkill(Skill skill) {
        this.skills.remove(skill);
    }
}
