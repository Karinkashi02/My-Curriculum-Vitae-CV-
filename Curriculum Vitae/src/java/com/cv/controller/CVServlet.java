/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.cv.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

import com.cv.model.Profile;
import com.cv.model.Experience;
import com.cv.model.Education;
import com.cv.model.Skill;

@WebServlet(name = "CVServlet", urlPatterns = {"/profile"})
public class CVServlet extends HttpServlet {

 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Profile myProfile = new Profile(
            "MUHAMMAD AMAR GHAZALI BIN AZIZ",
            "SOFTWARE DEVELOPER & COMPUTER SCIENTIST",
            "amarghazali7135@gmail.com", 
            "+60 XX-XXX XXXX",
            "LOT XXXXX",
            "KUALA TERENGGANU",  
            "TERENGGANU",
            "img/profile.png",
            "Passionate software developer specializing in frontend development and web applications. " +
            "Currently pursuing Bachelor of Computer Science at UiTM, with expertise in creating " +
            "pixel styled worlds, immersive artificial intelligence, and elegant user interfaces. " +
            "Dedicated to crafting immersive digital experiences through code and creativity.",
            "bg-dark"
        );
        
        myProfile.addExperience(new Experience(
            "System Developer Intern", 
            "Kastam Terengganu", 
            "6 Months", 
            "Building functional and elegant UI components for practical registration system"
        ));
        
        myProfile.addExperience(new Experience(
            "Membership Data Management", 
            "Ozel Chempaka", 
            "3 Months", 
            "Developed small prototypes of data management system"
        ));
        
        myProfile.addExperience(new Experience(
            "Freelance Web Developer", 
            "Self-Employed", 
            "Ongoing", 
            "Created responsive websites and web applications for various clients"
        ));
        
        myProfile.addEducation(new Education(
            "Bachelor of Computer Science (Honours)", 
            "Universiti Teknologi MARA (UiTM) Kuala Terengganu", 
            "Expected Graduation: 2028"
        ));
        
        myProfile.addEducation(new Education(
            "Diploma in Computer Science", 
            "Universiti Teknologi MARA (UiTM) Kuala Terengganu", 
            "Graduated On: 2025"
        ));
        
        myProfile.addSkill(new Skill("Frontend Development", 90));
        myProfile.addSkill(new Skill("Backend Development", 80));
        myProfile.addSkill(new Skill("Programming", 88));
        myProfile.addSkill(new Skill("Machine Learning", 60));
        myProfile.addSkill(new Skill("Cyber Security", 70));
        myProfile.addSkill(new Skill("Game Development", 50));
        
        request.setAttribute("profile", myProfile);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cv.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
