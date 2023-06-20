<%@page import="org.apache.catalina.connector.Response"%>
<%@page import ="com.universitywebsite.adminlogin.model.adminlogin"%>
<%@page import = "com.universitywebsite.adminlogin.dao.adminloginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String btn = request.getParameter("btn");
	
		if (btn.equals("login")){
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			adminlogin pq = adminloginDao.getDetail(username,password);
			if (pq==null){
				response.sendRedirect("adminlogin.jsp");
				
			}
			else{
				String role= pq.getRole();
				session.setAttribute("role", role);
				//String ids = (String)session.getAttribute("role");
				//out.print(ids);
				response.sendRedirect("dashboard.jsp");
			}
		}
		
		if (btn.equals("logout")){
			session.setAttribute("role",' ');
			response.sendRedirect("adminlogin.jsp");
		}
		
	%>