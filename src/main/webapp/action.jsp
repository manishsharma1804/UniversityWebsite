<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.universitywebsite.dashboard.dao.DashboardDao"%>
<%@page import="com.universitywebsite.dashboard.model.Dashboard"%>
<jsp:useBean id="d" class="com.universitywebsite.dashboard.model.Dashboard"></jsp:useBean>  
<jsp:setProperty property="*" name="d"/>


<%  

// Register student

String btn = request.getParameter("btn");

if(btn.equals("submit")){
	int i=DashboardDao.save(d);  
	if(i>0){  
	response.sendRedirect("dashboard.jsp");  
	}else{  
	response.sendRedirect("index.jsp");  
	} 
}

//fee management

if(btn.equals("search")){
		String formNumber = request.getParameter("formNumber");
		out.println(formNumber);
		 Dashboard dm = DashboardDao.getDetailById(Integer.parseInt(formNumber));
		/* if(dm!=null){
			String name = dm.getName();
			String classes = dm.getClasses();
			out.println(name);
			out.println(classes); */
			
			
			if(dm!=null)
			{
				session.setAttribute("formNumber", dm.getFormNumber());
				session.setAttribute("name", dm.getName());
				session.setAttribute("fatherName", dm.getFatherName());
				session.setAttribute("course", dm.getCourse());
				session.setAttribute("department", dm.getDepartment());
				session.setAttribute("admissionNumber", dm.getAdmissionNumber());
				/* setSession("name",dm.getName());
				setSession("classes",dm.getClasses());
				setSession */
				response.sendRedirect("feeManagement.jsp");
			}else
				%>
		    <script>
		        alert("Invalid Form Number! Please Try Again");
		        window.location.href = "searchStudent.jsp";
		    </script>
		<%
		}

// search student

if(btn.equals("searchStudent")){
	String formnumber = request.getParameter("formNumber");	
	
	Dashboard dm = DashboardDao.getStudentDetailById(Integer.parseInt(formnumber));
	
	
	if(dm != null){
		session.setAttribute("formNumber", dm.getFormNumber());
		session.setAttribute("admissionNumber", dm.getAdmissionNumber());
		session.setAttribute("name", dm.getName());
		session.setAttribute("aadharNumber", dm.getAadharNumber());
		session.setAttribute("contactNumber", dm.getContactNumber());
		session.setAttribute("alternateContactNumber", dm.getAlternateContactNumber());
		session.setAttribute("dateOfBirth", dm.getDateOfBirth());
		session.setAttribute("age", dm.getAge());
		session.setAttribute("gender", dm.getGender());
		session.setAttribute("bloodGroup", dm.getBloodGroup());
		session.setAttribute("emailAddress", dm.getEmailAddress());
		session.setAttribute("religion", dm.getReligion());
		session.setAttribute("category", dm.getCategory());
		session.setAttribute("admissionDate", dm.getAdmissionDate());
		session.setAttribute("sessionFrom", dm.getSessionFrom());
		session.setAttribute("sessionTo", dm.getSessionTo());
		session.setAttribute("course", dm.getCourse());
		session.setAttribute("branch", dm.getBranch());
		session.setAttribute("department", dm.getDepartment());
		session.setAttribute("lastSchoolAttended", dm.getLastSchoolAttended());
		session.setAttribute("lastClassAttended", dm.getLastClassAttended());
		session.setAttribute("yearOfLastSchoolAttended", dm.getYearOfLastSchoolAttended());
		session.setAttribute("username", dm.getUsername());
		session.setAttribute("password", dm.getPassword());
		session.setAttribute("fatherName", dm.getFatherName());
		session.setAttribute("fatherContactNumber", dm.getFatherContactNumber());
		session.setAttribute("fatherEmailId", dm.getFatherEmailId());
		session.setAttribute("motherName", dm.getMotherName());
		session.setAttribute("motherContactNumber", dm.getMotherContactNumber());
		session.setAttribute("motherEmailId", dm.getMotherEmailId());
		session.setAttribute("guardianName", dm.getGuardianName());
		session.setAttribute("relationWithGuardian", dm.getRelationWithGuardian());
		session.setAttribute("guardianContactNumber", dm.getGuardianContactNumber());
		session.setAttribute("permanentAddress", dm.getPermanentAddress());
		session.setAttribute("permanentArea", dm.getPermanentArea());
		session.setAttribute("permanentLandmark", dm.getPermanentLandmark());
		session.setAttribute("permanentState", dm.getPermanentState());
		session.setAttribute("permanentDistrict", dm.getPermanentDistrict());
		session.setAttribute("permanentPostalCode", dm.getPermanentPostalCode());
		session.setAttribute("correspondanceAddress", dm.getCorrespondanceAddress());
		session.setAttribute("correspondanceArea", dm.getCorrespondanceArea());
		session.setAttribute("correspondanceLandmark", dm.getCorrespondanceLandmark());
		session.setAttribute("correspondanceState", dm.getCorrespondanceState());
		session.setAttribute("correspondanceDistrict", dm.getCorrespondanceDistrict());
		session.setAttribute("correspondancePostalCode", dm.getCorrespondancePostalCode());
		session.setAttribute("transport", dm.getTransport());
		session.setAttribute("hostel", dm.getHostel());
		session.setAttribute("library", dm.getLibrary());
		session.setAttribute("sports", dm.getSports());
		session.setAttribute("culturalClub", dm.getCulturalClub());
		session.setAttribute("skillDevelopment", dm.getSkillDevelopment());
		session.setAttribute("gym", dm.getGym());

		response.sendRedirect("viewStudent.jsp");
	
	}
	else
		%>
    <script>
        alert("Invalid Form Number! Please Try Again");
        window.location.href = "searchStudent.jsp";
    </script>
<%
}
// update student
if (btn.equals("update")) {	

    Dashboard dm = new Dashboard();
    int i = DashboardDao.updateDetails(dm);
    if (i > 0) {
        response.sendRedirect("index.jsp");
    } else {
        out.println("submit failed");
    }
}
%>
