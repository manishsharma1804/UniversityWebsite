<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% String check= (String)session.getAttribute("role");
if(check==null){ response.sendRedirect("adminlogin.jsp"); } %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="css/dashboard.css" />
    <title>Fee Management Panel</title>
  </head>
  <body class="body">
    <jsp:include page="sideNavAdmin.jsp"></jsp:include>

    <section class="fee-management">
      <section class="fee-submission">
        <div class="add-student">
          <h3 style="text-align: center">Fee Management</h3>

          <form action="action.jsp" method="post">
            <div class="search">
              <input
                id="input"
                type="number"
                class="input"
                required="required"
                placeholder="Enter Student ID to search (number only)"
                name="formNumber"
              />
              <button
                id="btn"
                type="submit"
                name="btn"
                value="search"
                class="submitsearch"
              >
                <i class="fa-solid fa-search"></i>
              </button>
            </div>
          </form>
        </div>
      </section>
    </section>
  </body>
</html>
