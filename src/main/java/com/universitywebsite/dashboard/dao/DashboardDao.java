package com.universitywebsite.dashboard.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.universitywebsite.dashboard.model.*;
// register student
public class DashboardDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");   
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/universitywebsite?characterEncoding=latin1","root","root123"); 
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	} 
	
	public static int save(Dashboard d){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("insert into registered_students(admissionNumber,FormNumber,name,aadharNumber,contactNumber,alternateContactNumber,"
	        		+ "dateOfBirth,age,gender,bloodGroup,emailAddress,religion,category,admissionDate,sessionFrom,sessionTo,course,branch,department,"
	        		+ "lastSchoolAttended,lastClassAttended,yearOfLastSchoolAttended,username,password,confirmPassword,fatherName,fatherContactNumber,fatherEmailId,motherName,"
	        		+ "motherContactNumber,motherEmailId,guardianName,relationWithGuardian,guardianContactNumber,permanentAddress,permanentArea,"
	        		+ "permanentLandmark,permanentState,permanentDistrict,permanentPostalCode,correspondanceAddress,correspondanceArea,correspondanceLandmark,"
	        		+ "correspondanceState,correspondanceDistrict,correspondancePostalCode,transport,hostel,library,sports,culturalClub,skillDevelopment,gym) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	        ps.setString(1,d.getAdmissionNumber());
	        ps.setString(2,d.getFormNumber());
	        ps.setString(3,d.getName());
	        ps.setString(4,d.getAadharNumber());
	        ps.setString(5,d.getContactNumber());
	        ps.setString(6,d.getAlternateContactNumber());
	        ps.setString(7,d.getDateOfBirth());
	        ps.setString(8,d.getAge());
	        ps.setString(9,d.getGender());
	        ps.setString(10,d.getBloodGroup());
	        ps.setString(11,d.getEmailAddress());
	        ps.setString(12,d.getReligion());
	        ps.setString(13,d.getCategory());
	        ps.setString(14,d.getAdmissionDate());
	        ps.setString(15,d.getSessionFrom());
	        ps.setString(16,d.getSessionTo());
	        ps.setString(17,d.getCourse());
	        ps.setString(18,d.getBranch());
	        ps.setString(19,d.getDepartment());
	        ps.setString(20,d.getLastSchoolAttended());
	        ps.setString(21,d.getLastClassAttended());
	        ps.setString(22,d.getYearOfLastSchoolAttended());
	        ps.setString(23,d.getUsername());
	        ps.setString(24,d.getPassword());
	        ps.setString(25,d.getConfirmPassword());
	        ps.setString(26,d.getFatherName());
	        ps.setString(27,d.getFatherContactNumber());
	        ps.setString(28,d.getFatherEmailId());
	        ps.setString(29,d.getMotherName());
	        ps.setString(30,d.getMotherContactNumber());
	        ps.setString(31,d.getMotherEmailId());
	        ps.setString(32,d.getGuardianName());
	        ps.setString(33,d.getRelationWithGuardian());
	        ps.setString(34,d.getGuardianContactNumber());
	        ps.setString(35,d.getPermanentAddress());
	        ps.setString(36,d.getPermanentArea());
	        ps.setString(37,d.getPermanentLandmark());
	        ps.setString(38,d.getPermanentState());
	        ps.setString(39,d.getPermanentDistrict());
	        ps.setString(40,d.getPermanentPostalCode());
	        ps.setString(41,d.getCorrespondanceAddress());
	        ps.setString(42,d.getCorrespondanceArea());
	        ps.setString(43,d.getCorrespondanceLandmark());
	        ps.setString(44,d.getCorrespondanceState());
	        ps.setString(45,d.getCorrespondanceDistrict());
	        ps.setString(46,d.getCorrespondancePostalCode());
	        ps.setString(47,d.getTransport());
	        ps.setString(48,d.getHostel());
	        ps.setString(49,d.getLibrary());
	        ps.setString(50,d.getSports());
	        ps.setString(51,d.getCulturalClub());
	        ps.setString(52,d.getSkillDevelopment());
	        ps.setString(53,d.getGym());
	        
	        
	        
	        status = ps.executeUpdate();
	    }catch(Exception e) {System.out.print(e);}
	    return status;
	         
	}
	
	public static List<Dashboard> getAllRecord(){
		List<Dashboard> list=new ArrayList<Dashboard>();
		try {
			Connection con =getConnection();
			PreparedStatement ps =con.prepareStatement("select * from registered_students");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Dashboard d = new Dashboard();
				d.setAdmissionNumber(rs.getString("admissionNumber"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}



// fee management


public static Dashboard getDetailById(int id) {
	
	
	Dashboard dm = null;
	try {
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement("select * from registered_students where formNumber = ?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			dm=new Dashboard();  
			dm.setName(rs.getString("name"));
			dm.setFatherName(rs.getString("fatherName"));
			dm.setCourse(rs.getString("course"));
			dm.setDepartment(rs.getString("department"));
			dm.setAdmissionNumber(rs.getString("admissionNumber"));
			dm.setFormNumber(rs.getString("formNumber"));
			
			
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
	}
    return dm;
	
}


// search student

public static Dashboard getStudentDetailById(int id) {
	
	
	Dashboard dm = null;
	try {
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement("select * from registered_students where formNumber = ?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			dm=new Dashboard();  
			dm.setAdmissionNumber(rs.getString("admissionNumber"));
			dm.setFormNumber(rs.getString("formNumber"));
			dm.setName(rs.getString("name"));
			dm.setAadharNumber(rs.getString("aadharNumber"));
			dm.setContactNumber(rs.getString("contactNumber"));
			dm.setAlternateContactNumber(rs.getString("alternateContactNumber"));
			dm.setDateOfBirth(rs.getString("dateOfBirth"));
			dm.setAge(rs.getString("age"));
			dm.setGender(rs.getString("gender"));
			dm.setBloodGroup(rs.getString("bloodGroup"));
			dm.setEmailAddress(rs.getString("emailAddress"));
			dm.setReligion(rs.getString("religion"));
			dm.setCategory(rs.getString("category"));
			dm.setAdmissionDate(rs.getString("admissionDate"));
			dm.setSessionFrom(rs.getString("sessionFrom"));
			dm.setSessionTo(rs.getString("sessionTo"));
			dm.setCourse(rs.getString("course"));
			dm.setBranch(rs.getString("branch"));
			dm.setDepartment(rs.getString("department"));
			dm.setLastSchoolAttended("lastSchoolAttended");
			dm.setLastClassAttended(rs.getString("lastClassAttended"));
			dm.setYearOfLastSchoolAttended(rs.getString("yearOfLastSchoolAttended"));
			dm.setUsername(rs.getString("username"));
			dm.setPassword(rs.getString("password"));
			dm.setFatherName(rs.getString("fatherName"));
			dm.setFatherContactNumber(rs.getString("fatherContactNumber"));
			dm.setFatherEmailId(rs.getString("fatherEmailId"));
			dm.setMotherName(rs.getString("motherName"));
			dm.setMotherContactNumber(rs.getString("motherContactNumber"));
			dm.setMotherEmailId(rs.getString("motherEmailId"));
			dm.setGuardianName(rs.getString("guardianName"));
			dm.setRelationWithGuardian(rs.getString("relationWithGuardian"));
			dm.setGuardianContactNumber(rs.getString("guardianContactNumber"));
			dm.setPermanentAddress(rs.getString("permanentAddress"));
			dm.setPermanentArea(rs.getString("permanentArea"));
			dm.setPermanentLandmark(rs.getString("permanentLandmark"));
			dm.setPermanentState(rs.getString("permanentState"));
			dm.setPermanentDistrict(rs.getString("permanentDistrict"));
			dm.setPermanentPostalCode(rs.getString("permanentPostalCode"));
			dm.setCorrespondanceAddress(rs.getString("correspondanceAddress"));
			dm.setCorrespondanceArea(rs.getString("correspondanceArea"));
			dm.setCorrespondanceLandmark(rs.getString("correspondanceLandmark"));
			dm.setCorrespondanceState(rs.getString("correspondanceState"));
			dm.setCorrespondanceDistrict(rs.getString("correspondanceDistrict"));
			dm.setCorrespondancePostalCode(rs.getString("correspondancePostalCode"));
			dm.setTransport(rs.getString("transport"));
			dm.setHostel(rs.getString("hostel"));
			dm.setLibrary(rs.getString("library"));
			dm.setSports(rs.getString("sports"));
			dm.setCulturalClub(rs.getString("culturalClub"));
			dm.setSkillDevelopment(rs.getString("skillDevelopment"));
			dm.setGym(rs.getString("gym"));
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
	}
    return dm;
	
}

// update student

public static int updateDetails(Dashboard dm) {
    int status = 0;
    try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("update registered_students set admissionNumber=?,FormNumber=?,name=?,aadharNumber=?,contactNumber=?,alternateContactNumber=?,dateOfBirth=?,age=?,gender=?,bloodGroup=?,emailAddress=?,religion=?,category=?,admissionDate=?,sessionFrom=?,sessionTo=?,course=?,branch=?,department=?,lastSchoolAttended=?,lastClassAttended=?,yearOfLastSchoolAttended=?,username=?,password=?,confirmPassword=?,fatherName=?,fatherContactNumber=?,fatherEmailId=?,motherName=?,motherContactNumber=?,motherEmailId=?,guardianName=?,relationWithGuardian=?,guardianContactNumber=?,permanentAddress=?,permanentArea=?,permanentLandmark=?,permanentState=?,permanentDistrict=?,permanentPostalCode=?,correspondanceAddress=?,correspondanceArea=?,correspondanceLandmark=?,correspondanceState=?,correspondanceDistrict=?,correspondancePostalCode=?,transport=?,hostel=?,library=?,sports=?,culturalClub=?,skillDevelopment=?,gym=?  where formNumber=?");
        ps.setString(1, dm.getAdmissionNumber());
        ps.setString(2, dm.getFormNumber());
        ps.setString(3, dm.getName());
        ps.setString(4, dm.getAadharNumber());
        ps.setString(5, dm.getContactNumber());
        ps.setString(6, dm.getAlternateContactNumber());
        ps.setString(7, dm.getDateOfBirth());
        ps.setString(8, dm.getAge());
        ps.setString(9, dm.getGender());
        ps.setString(10, dm.getBloodGroup());
        ps.setString(11, dm.getEmailAddress());
        ps.setString(12, dm.getReligion());
        ps.setString(13, dm.getCategory());
        ps.setString(14, dm.getAdmissionDate());
        ps.setString(15, dm.getSessionFrom());
        ps.setString(16, dm.getSessionTo());
        ps.setString(17, dm.getCourse());
        ps.setString(18, dm.getBranch());
        ps.setString(19, dm.getDepartment());
        ps.setString(20, dm.getLastSchoolAttended());
        ps.setString(21, dm.getLastClassAttended());
        ps.setString(22, dm.getYearOfLastSchoolAttended());
        ps.setString(23, dm.getUsername());
        ps.setString(24, dm.getPassword());
        ps.setString(25, dm.getConfirmPassword());
        ps.setString(26, dm.getFatherName());
        ps.setString(27, dm.getFatherContactNumber());
        ps.setString(28, dm.getFatherEmailId());
        ps.setString(29, dm.getMotherName());
        ps.setString(30, dm.getMotherContactNumber());
        ps.setString(31, dm.getMotherEmailId());
        ps.setString(32, dm.getGuardianName());
        ps.setString(33, dm.getRelationWithGuardian());
        ps.setString(34, dm.getGuardianContactNumber());
        ps.setString(35, dm.getPermanentAddress());
        ps.setString(36, dm.getPermanentArea());
        ps.setString(37, dm.getPermanentLandmark());
        ps.setString(38, dm.getPermanentState());
        ps.setString(39, dm.getPermanentDistrict());
        ps.setString(40, dm.getPermanentPostalCode());
        ps.setString(41, dm.getCorrespondanceAddress());
        ps.setString(42, dm.getCorrespondanceArea());
        ps.setString(43, dm.getCorrespondanceLandmark());
        ps.setString(44, dm.getCorrespondanceState());
        ps.setString(45, dm.getCorrespondanceDistrict());
        ps.setString(46, dm.getCorrespondancePostalCode());
        ps.setString(47, dm.getTransport());
        ps.setString(48, dm.getHostel());
        ps.setString(49, dm.getLibrary());
        ps.setString(50, dm.getSports());
        ps.setString(51, dm.getCulturalClub());
        ps.setString(52, dm.getSkillDevelopment());
        ps.setString(53, dm.getGym());
        ps.setString(54,dm.getFormNumber());
        status = ps.executeUpdate();
        con.close();
    } catch (Exception e) {
        System.out.println("Update Err: " + e.getLocalizedMessage());
    }
    return status;
}
}
