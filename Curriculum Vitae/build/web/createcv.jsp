<%-- 
    Document   : addNew
    Created on : 16 Nov 2025, 12:35:52 pm
    Author     : Xander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Your CV</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- BACK BUTTON -->
    <div class="position-absolute top-0 start-0 m-3">
        <button onclick="history.back()" class="btn btn-primary">
            <i class="fas fa-arrow-left me-2"></i>Back to Home
        </button>
    </div>
    
    <div class="form-container">
        <h1 class="text-center mb-4">Create Your CV</h1>
        
        <form action="add-new" method="POST" id="cvForm">
            
            <!-- SECTION 1 -->
            <h3 class="section-title">Profile Appearance</h3>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <label class="form-label fw-bold">Profile Picture</label>
                    <div class="text-center">
                        <img id="profilePreview" src="https://placehold.co/150x150/e9ecef/6c757d?text=Preview" class="profile-preview" alt="Profile Preview">
                        <input type="file" class="form-control mt-2" name="profileImage" accept="image/*" onchange="previewImage(this)">
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <label class="form-label fw-bold">CV Color Theme</label>
                    <div class="d-flex flex-wrap mt-2">
                        <div class="color-option bg-dark selected" data-color="bg-dark" onclick="selectColor(this)"></div>
                        <div class="color-option bg-primary" data-color="bg-primary" onclick="selectColor(this)"></div>
                        <div class="color-option bg-success" data-color="bg-success" onclick="selectColor(this)"></div>
                        <div class="color-option bg-danger" data-color="bg-danger" onclick="selectColor(this)"></div>
                        <div class="color-option bg-warning" data-color="bg-warning" onclick="selectColor(this)"></div>
                        <div class="color-option bg-info" data-color="bg-info" onclick="selectColor(this)"></div>
                        <div class="color-option bg-secondary" data-color="bg-secondary" onclick="selectColor(this)"></div>
                    </div>
                    <input type="hidden" name="color" id="color" value="bg-secondary">
                </div>
            </div>
   
            <!-- SECTION 2 -->
            <h3 class="section-title">Personal Information</h3>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">Full Name</label>
                    <input type="text" class="form-control" name="name" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label">Label/Designation</label>
                    <input type="text" class="form-control" name="designation" required>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" name="email" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" name="phone" required>
                </div>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Address</label>
                <input type="text" class="form-control" name="address" required>
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">Area/City</label>
                    <input type="text" class="form-control" name="area" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label">State</label>
                    <input type="text" class="form-control" name="state" required>
                </div>
            </div>
            
            <div class="mb-3">
                <label class="form-label">About Me</label>
                <textarea class="form-control" name="about" rows="4" required></textarea>
            </div>
            
            <!-- SECTION 3 -->
            <h3 class="section-title">Skills</h3>
            <div id="skills-container">
                <!-- This is the first, static skill entry -->
                <div class="skill-entry">
                    <div class="row align-items-center">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Skill Name</label>
                            <input type="text" class="form-control" name="skillName" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <!-- MODIFIED: Replaced dropdown with range slider -->
                            <label class="form-label">Proficiency Level: 
                                <span class="skill-percentage-display fw-bold text-primary">50%</span>
                            </label>
                            <input type="range" class="form-range" name="skillLevel" min="0" max="100" value="50" 
                                   oninput="this.previousElementSibling.querySelector('.skill-percentage-display').textContent = this.value + '%'">
                        </div>
                    </div>
                </div>
            </div>
            <button type="button" class="btn btn-outline-primary mb-4" onclick="addSkill()">
                <i class="fas fa-plus me-2"></i>Add Another Skill
            </button>
            
            <!-- SECTION 4 -->
            <h3 class="section-title">Education</h3>
            <div id="education-container">
                <div class="education-entry">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Degree</label>
                            <input type="text" class="form-control" name="degree" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Institution</label>
                            <input type="text" class="form-control" name="institution" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Expected Graduation/Graduated On : (Year)</label>
                        <input type="text" class="form-control" name="gradYear" required>
                    </div>
                </div>
            </div>
            <button type="button" class="btn btn-outline-primary mb-4" onclick="addEducation()">
                <i class="fas fa-plus me-2"></i>Add Another Education
            </button>
            
            <!-- SECTION 5 -->
            <h3 class="section-title">Work Experience</h3>
            <div id="experience-container">
                <div class="experience-entry">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Job Title</label>
                            <input type="text" class="form-control" name="jobTitle" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Company</label>
                            <input type="text" class="form-control" name="company" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Duration (Years/Months/Ongoing)</label>
                            <input type="text" class="form-control" name="duration" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Job Description</label>
                        <textarea class="form-control" name="description" rows="3" required></textarea>
                    </div>
                </div>
            </div>
            <button type="button" class="btn btn-outline-primary mb-4" onclick="addExperience()">
                <i class="fas fa-plus me-2"></i>Add Another Experience
            </button>

            <div class="text-center mt-4">
                <button type="submit" class="btn btn-primary btn-lg w-100">Generate CV</button>
            </div>
        </form>
    </div>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        let educationCount = 1;
        let experienceCount = 1;
        let skillCount = 1;
        
        function previewImage(input) {
            const preview = document.getElementById('profilePreview');
            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    preview.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        
        function selectColor(element) {
            document.querySelectorAll('.color-option').forEach(opt => {
                opt.classList.remove('selected');
            });
            
            element.classList.add('selected');
            
            document.getElementById('color').value = element.getAttribute('data-color');
        }
        
        function addSkill() {
            skillCount++;
            const container = document.getElementById('skills-container');
            const newEntry = document.createElement('div');
            newEntry.className = 'skill-entry';
            //skill bar
            newEntry.innerHTML = `
                <div class="row align-items-center">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Skill Name</label>
                        <input type="text" class="form-control" name="skillName" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Proficiency Level: 
                            <span class="skill-percentage-display fw-bold text-primary">50%</span>
                        </label>
                        <input type="range" class="form-range" name="skillLevel" min="0" max="100" value="50" 
                               oninput="this.previousElementSibling.querySelector('.skill-percentage-display').textContent = this.value + '%'">
                    </div>
                </div>
                <button type="button" class="btn btn-outline-danger btn-sm remove-btn" onclick="this.parentElement.remove()">
                    <i class="fas fa-trash me-1"></i>Remove
                </button>
            `;
            container.appendChild(newEntry);
        }
        
        function addEducation() {
            educationCount++;
            const container = document.getElementById('education-container');
            const newEntry = document.createElement('div');
            newEntry.className = 'education-entry';
            newEntry.innerHTML = `
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Degree</label>
                        <input type="text" class="form-control" name="degree" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Institution</label>
                        <input type="text" class="form-control" name="institution" required>
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label">Expected Graduation/Graduated On : (Year)</label>
                    <input type="text" class="form-control" name="gradYear" required>
                </div>
                <button type="button" class="btn btn-outline-danger btn-sm remove-btn" onclick="this.parentElement.remove()">
                    <i class="fas fa-trash me-1"></i>Remove
                </button>
            `;
            container.appendChild(newEntry);
        }

        function addExperience() {
            experienceCount++;
            const container = document.getElementById('experience-container');
            const newEntry = document.createElement('div');
            newEntry.className = 'experience-entry';
            newEntry.innerHTML = `
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Job Title</label>
                        <input type="text" class="form-control" name="jobTitle" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Company</label>
                        <input type="text" class="form-control" name="company" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Duration (Years/Months/Ongoing)</label>
                        <input type="text" class="form-control" name="duration" required>
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label">Job Description</label>
                    <textarea class="form-control" name="description" rows="3" required></textarea>
                </div>
                <button type="button" class="btn btn-outline-danger btn-sm remove-btn" onclick="this.parentElement.remove()">
                    <i class="fas fa-trash me-1"></i>Remove
                </button>
            `;
            container.appendChild(newEntry);
        }
    </script>
</body>
</html>