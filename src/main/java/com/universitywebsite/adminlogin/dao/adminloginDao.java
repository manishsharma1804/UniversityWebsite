package com.universitywebsite.adminlogin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.universitywebsite.adminlogin.model.adminlogin;

public class adminloginDao {
		public static Connection getConnection() {
			Connection  con = null;
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitywebsite?characterEncoding=latin1","root","root123");
			} catch (Exception e) {
				System.out.println("Exception Err:"+ e.getLocalizedMessage());
			}
			return con;
		}
		
		
		public static adminlogin getDetail(String username, String password) {
			
			adminlogin al = null;
			try {
				Connection con = getConnection();
				
				PreparedStatement ps =con.prepareStatement("select * from admindetails where username = ? and password = ?");
				ps.setString(1, username);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					
					al = new adminlogin();
					al.setUsername(rs.getString("username"));
					al.setPassword(rs.getString("password"));
					al.setRole(rs.getString("role"));
//					al.setId(rs.getInt("id"));
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return al;
		}
}
