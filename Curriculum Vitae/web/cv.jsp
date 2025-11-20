<%-- 
    Document   : cv
    Created on : 14 Nov 2025, 10:59:24 pm
    Author     : Xander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${profile.name}</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- BACK BUTTON -->
        <div class="position-absolute top-0 start-0 m-3">
            <button onclick="history.back()" class="btn btn-primary">
                <i class="fas fa-arrow-left me-2"></i>Back to Home
            </button>
        </div>
        <div class="cv-wrapper d-flex justify-content-center py-5">
            <div class="cv-container shadow-lg bg-white position-relative">
                <div class="row g-0">

                    <!-- LEFT CONTENT -->
                    <div class="col-12 col-md-5 col-lg-5 ${profile.color} text-white p-4 d-flex flex-column align-items-center">

                        <img src="${profile.image}" class="img-fluid rounded-circle mb-3" style="width:200px;height:200px;object-fit:cover;">

                        <h4 class="fw-bold border-bottom pb-2 mt-4">ABOUT ME</h4>
                        <p class="small" style="text-align: justify">${profile.about}</p>

                        <h4 class="fw-bold border-bottom pb-2 mt-4">CONTACT</h4>
                        <ul class="list-group list-group-flush w-100">
                            <li class="list-group-item ${profile.color} text-white border-0">
                                <i class="fas fa-phone me-2"></i>${profile.number}
                            </li>
                            <li class="list-group-item ${profile.color} text-white border-0">
                                <i class="fas fa-envelope me-2"></i>${profile.email}
                            </li>
                            <li class="list-group-item ${profile.color} text-white border-0">
                                <i class="fas fa-map-marker-alt me-2"></i>
                                ${profile.address}, ${profile.area}, ${profile.state}
                            </li>
                        </ul>

                        <h4 class="fw-bold border-bottom pb-2 mt-4">SKILLS</h4>
                        <div class="skills-list w-100">
                            <c:forEach var="skill" items="${profile.skills}">
                                <div class="mb-3">
                                    <label class="fw-semibold text-white">${skill.SName}</label>
                                    <div class="progress" style="height: 10px;">
                                        <div class="progress-bar" style=" background-color: #46556c; width: ${skill.SLevel}%"></div>
                                    </div>
                                    <small class="text-white">${skill.SLevel}%</small>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <!-- RIGHT CONTENT -->
                    <div class="col-12 col-md-7 col-lg-7 p-4">
                        <h2 class="fw-bold mt-4">${profile.name}</h2>
                        <h6 class="text-center mb-5">${profile.designation}</h6>

                        <h4 class="fw-bold border-bottom pb-2">WORK EXPERIENCES</h4>
                        <c:forEach var="exp" items="${profile.experiences}">
                            <div class="card mb-3 shadow-sm">
                                <div class="card-body">
                                    <h5 class="fw-bold">${exp.jobTitle}</h5>
                                    <div class="text-muted">${exp.company}</div>
                                    <small class="text-secondary">${exp.duration}</small>
                                    <p class="mt-2">${exp.description}</p>
                                </div>
                            </div>
                        </c:forEach>

                        <h4 class="fw-bold border-bottom pb-2 mt-4">EDUCATIONS</h4>
                        <c:forEach var="edu" items="${profile.educations}">
                            <div class="card mb-3 shadow-sm">
                                <div class="card-body">
                                    <h5 class="fw-bold">${edu.degree}</h5>
                                    <div class="text-muted">${edu.institution}</div>
                                    <small>${edu.gradYear}</small>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>