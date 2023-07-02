<%@page import="com.universitywebsite.dashboard.model.Dashboard"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   String check= (String)session.getAttribute("role");
   if(check == null){
   	response.sendRedirect("adminlogin.jsp");
   	
   }
   
   String formNumber = (String) session.getAttribute("formNumber");
   String admissionnumber = (String) session.getAttribute("admissionNumber");
   String name = (String) session.getAttribute("name");
   String aadharNumber = (String) session.getAttribute("aadharNumber");
   String contactNumber = (String) session.getAttribute("contactNumber");
   String alternateContactNumber = (String) session.getAttribute("alternateContactNumber");
   String dateOfBirth = (String) session.getAttribute("dateOfBirth");
   String age = (String) session.getAttribute("age");
   String gender = (String) session.getAttribute("gender");
   String bloodgroup = (String) session.getAttribute("bloodGroup");
   String emailAddress= (String) session.getAttribute("emailAddress");
   String religion = (String) session.getAttribute("religion");
   String category = (String) session.getAttribute("category");
   String admissionDate = (String) session.getAttribute("admissionDate");
   String sessionFrom = (String) session.getAttribute("sessionFrom");
   String sessionTo = (String) session.getAttribute("sessionTo");
   String course = (String) session.getAttribute("course");
   String branch = (String) session.getAttribute("branch");
   String department = (String) session.getAttribute("department");
   String lastSchoolAttended = (String) session.getAttribute("lastSchoolAttended");
   String lastClassAttended = (String) session.getAttribute("lastClassAttended");
   String yearOfLastSchoolAttended = (String) session.getAttribute("yearOfLastSchoolAttended");
   String username = (String) session.getAttribute("username");
   String password = (String) session.getAttribute("password");
   String fatherName = (String) session.getAttribute("fatherName");
   String fatherContactNumber = (String) session.getAttribute("fatherContactNumber");
   String fatherEmailId = (String) session.getAttribute("fatherEmailId");
   String motherName = (String) session.getAttribute("motherName");
   String motherContactNumber = (String) session.getAttribute("motherContactNumber");
   String motherEmailId = (String) session.getAttribute("motherEmailId");
   String guardianName = (String) session.getAttribute("guardianName");
   String relationWithGuardian = (String) session.getAttribute("relationWithGuardian");
   String guardianContactNumber = (String) session.getAttribute("guardianContactNumber");
   String permanentAddress = (String) session.getAttribute("permanentAddress");
   String permanentArea = (String) session.getAttribute("permanentArea");
   String permanentLandmark = (String) session.getAttribute("permanentLandmark");
   String permanentState = (String) session.getAttribute("permanentState");
   String permanentDistrict = (String) session.getAttribute("permanentDistrict");
   String permanentPostalCode = (String) session.getAttribute("permanentPostalCode");
   String correspondanceAddress = (String) session.getAttribute("correspondanceAddress");
   String correspondanceArea = (String) session.getAttribute("correspondanceArea");
   String correspondanceLandmark = (String) session.getAttribute("correspondanceLandmark");
   String correspondanceState = (String) session.getAttribute("correspondanceState");
   String correspondanceDistrict = (String) session.getAttribute("correspondanceDistrict");
   String correspondancePostalCode = (String) session.getAttribute("correspondancePostalCode");
   String transport = (String) session.getAttribute("transport");
   String hostel = (String) session.getAttribute("hostel");
   String library = (String) session.getAttribute("library");
   String sports = (String) session.getAttribute("sports");
   String culturalClub = (String) session.getAttribute("culturalClub");
   String skillDevelopment = (String) session.getAttribute("skillDevelopment");
   String gym = (String) session.getAttribute("gym");

   
   %>
<!DOCTYPE html>
<html>
  <head>
    <title>Student Detail</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 20px;
      }
      h1 {
        text-align: center;
        margin-bottom: 20px;
      }
      .detail {
        margin-bottom: 10px;
      }
      .label {
        font-weight: bold;
      }
    </style>
    <link rel="stylesheet" href="css/dashboard.css" />
  </head>
  <body class="body">
    <jsp:include page="sideNavAdmin.jsp"></jsp:include>
    <section class="student-management">
      <section class="regstd">
        <div class="add-student">
          <h3 style="text-align: center">Student Registration</h3>
          <%-- <div class="search">
            <input
              id="input"
              type="text"
              class="input-aaa"
              required="required"
              value="<%=formNumber %>"
              readonly="readonly"
              placeholder="Enter Student ID to search"
              name="formnumber"
            />
            <a
              class="submitsearch-r"
              href="searchStudent.jsp"
              style="text-decoration: none"
              >Search Next</a
            >
          </div> --%>
          <div class="container-fluid">
            <div class="row row-group">
              <div class="col-md-4 ids">
                <div class="detail">
                  <span class="label">Admission Number:</span>
                  <span><%=admissionnumber %></span>
                </div>
              </div>
              <div class="col-md-4"></div>
              <div class="col-md-4 ids">
                <div class="detail">
                  <span class="label">Form Number:</span>
                  <span><%=formNumber %></span>
                </div>
              </div>
            </div>
          </div>
          <fieldset>
            <legend>Student Information</legend>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Name:</span>
                    <span><%=name%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Aadhar Number:</span>
                    <span><%=aadharNumber %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Contact Number:</span>
                    <span><%=contactNumber%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Alternate Contact Number:</span>
                    <span><%=alternateContactNumber%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Date of Birth:</span>
                    <span><%=dateOfBirth %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Age:</span>
                    <span><%=age%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Gender:</span>
                    <span><%=gender%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Blood Group:</span>
                    <span><%=bloodgroup %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Email Address:</span>
                    <span><%=emailAddress%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Religion:</span>
                    <span><%=religion%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Category:</span>
                    <span><%=category%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Admission Date:</span>
                    <span><%=admissionDate%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Session From:</span>
                    <span><%=sessionFrom%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Session To:</span>
                    <span><%=sessionTo%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Course:</span>
                    <span><%=course%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Branch:</span>
                    <span><%=branch%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Department:</span>
                    <span><%=department %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Last School Attended:</span>
                    <span><%=yearOfLastSchoolAttended%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Last Class Attended:</span>
                    <span><%=lastClassAttended%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Year of Last School Attended:</span>
                    <span><%=yearOfLastSchoolAttended %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Username:</span>
                    <span><%=username%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Password:</span>
                    <span><%=password%></span>
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
          <fieldset>
            <legend>Parent Information</legend>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Father's Name:</span>
                    <span><%=fatherName%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Father's Contact Number:</span>
                    <span><%=fatherContactNumber %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Father's Email Id:</span>
                    <span><%=fatherEmailId%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Mother's Name:</span>
                    <span><%=motherName%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Mother's Contact Number:</span>
                    <span><%=motherContactNumber %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Mother's Email Id:</span>
                    <span><%=motherEmailId%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Guardian's Name:</span>
                    <span><%=guardianName%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Relation with Guardian:</span>
                    <span><%=relationWithGuardian %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Guardian's Contact Number:</span>
                    <span><%=guardianContactNumber%></span>
                  </div>
                </div>
              </div>
            </div>
          </fieldset>

          <fieldset>
            <legend>Addresses</legend>
            <h6>Permanent Address</h6>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Address:</span>
                    <span><%=permanentAddress%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Area:</span>
                    <span><%=permanentArea %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Landmark:</span>
                    <span><%=permanentLandmark%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">State:</span>
                    <span><%=permanentState%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">District:</span>
                    <span><%=permanentDistrict %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Postal code:</span>
                    <span><%=permanentPostalCode%></span>
                  </div>
                </div>
              </div>
            </div>
            <h6>Permanent Address</h6>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Address:</span>
                    <span><%=correspondanceAddress%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Area:</span>
                    <span><%=correspondanceArea %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Landmark:</span>
                    <span><%=correspondanceLandmark%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">State:</span>
                    <span><%=correspondanceState%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">District:</span>
                    <span><%=correspondanceDistrict %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Postal code:</span>
                    <span><%=correspondancePostalCode%></span>
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
<%-- 
          <fieldset>
            <legend>Facilities Availed</legend>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Transport:</span>
                    <span><%=transport%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Hostel:</span>
                    <span><%=hostel %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Library:</span>
                    <span><%=library%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Sports:</span>
                    <span><%=sports%></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Cultural Club:</span>
                    <span><%=culturalClub %></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Skill Development:</span>
                    <span><%=skillDevelopment%></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <div class="row row-group">
                <div class="col-md-4">
                  <div class="detail">
                    <span class="label">Gym:</span>
                    <span><%=gym%></span>
                  </div>
                </div>
              </div>
            </div>
          </fieldset> --%>
          <div class="input-field">
  			<input type="submit" name="btn" class="submit" value="Search Other Student ?" onclick="redirectToPage()">
		</div>

<script>
  function redirectToPage() {
    window.location.href = "searchStudent.jsp"; // Replace with your desired URL
  }
</script>

          <%-- <a class="submitsearch-r" href="editStudent.jsp?btn=update&formnumber=<%=formNumber%>">Make Changes</a> --%>
        </div>
      </section>
    </section>
  </body>
</html>
