<%@ page import="com.universitywebsite.dashboard.dao.DashboardDao" %>
<%@ page import="com.universitywebsite.dashboard.model.Dashboard" %>
<%@ page import="org.apache.naming.java.javaURLContextFactory" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%
   String check = (String) session.getAttribute("role");
   if (check == null) {
       response.sendRedirect("adminlogin.jsp");
   }
%>

<%
String name = (String) session.getAttribute("name");
%>
<jsp:include page="sideNavAdmin.jsp" />
<form action="action.jsp" method="POST">
    <div class="col-md-12 col-12">
        <label>Name</label>
        <input type="text" placeholder="Enter Your Name" name="name" value="<%=name%>" class="form-control">
        <input type="submit" name="btn" value="update" class="btn btn-success">
    </div>
</form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="javascript/script.js"></script>
</body>
</html>
