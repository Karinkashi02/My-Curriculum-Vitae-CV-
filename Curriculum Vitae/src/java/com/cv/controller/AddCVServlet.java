/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.cv.controller;

import com.cv.model.Education;
import com.cv.model.Experience;
import com.cv.model.Profile;
import com.cv.model.Skill;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.MultipartConfig;

@MultipartConfig( //MB
    fileSizeThreshold = 1024 * 1024 * 1,
    maxFileSize = 1024 * 1024 * 10,
    maxRequestSize = 1024 * 1024 * 15
)
@WebServlet(name = "AddCV", urlPatterns = {"/add-new"})
public class AddCVServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/createcv.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String designation = request.getParameter("designation");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String area = request.getParameter("area");
        String state = request.getParameter("state");
        String imgPath = "img/default.png";
        String about = request.getParameter("about");
        String color = request.getParameter("color");
        
        Profile profile = new Profile(name, designation, email, phone, address, area, state, imgPath, about, color);
        
        String[] degrees = request.getParameterValues("degree");
        String[] institutions = request.getParameterValues("institution");
        String[] gradYears = request.getParameterValues("gradYear");

        if (degrees != null) {
            for (int i = 0; i < degrees.length; i++) {
                profile.addEducation(new Education(
                        degrees[i],
                        institutions[i],
                        gradYears[i]
                ));
            }
        }

        String[] jobTitles = request.getParameterValues("jobTitle");
        String[] companies = request.getParameterValues("company");
        String[] durations = request.getParameterValues("duration");
        String[] descriptions = request.getParameterValues("description");

        if (jobTitles != null) {
            for (int i = 0; i < jobTitles.length; i++) {
                profile.addExperience(new Experience(
                        jobTitles[i],
                        companies[i],
                        durations[i],
                        descriptions[i]
                ));
            }
        }
        
        
        String[] skillNames = request.getParameterValues("skillName");
        String[] skillLevels = request.getParameterValues("skillLevel");

        if (skillNames != null) {
            for (int i = 0; i < skillNames.length; i++) {
                try {
                    int level = Integer.parseInt(skillLevels[i]);
                    profile.addSkill(new Skill(skillNames[i], level));
                } catch (NumberFormatException e) {
                    // Handle invalid level, maybe set default or skip
                    profile.addSkill(new Skill(skillNames[i], 50)); // Default to 50%
                }
            }
        }
        
        
        request.setAttribute("profile", profile);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cv.jsp");
        dispatcher.forward(request, response);
    }
}
