<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="css/dashboard.css">
</head>

<body>
  <!--   <section class="header">
	<div>
		
	</div>
</section>   -->
  <section>
    <div class="side-nav">
      <div class="logo">
        <img src="img/admin.png" alt="logo" class="image">
        <h2>Administrator</h2>
      </div>
      <div class="menu">
        <div class="item"><a href="dashboard.jsp"><i class="fa-solid fa-house-user"></i><span>DashBoard</span></a></div>
        <div class="item-b"><a href="#"><i class="fa-solid fa-file-lines"></i><span>Student Management</span><i class="fa-solid fa-caret-down" "sidearrow"></i></a>
          <div class="sub-menu">
            <a href="studentRegistration.jsp" class="sub-item"><i class="fa-regular fa-address-card"></i><span>Register</span></a>
            <a href="searchStudent.jsp" class="sub-item"><i class="fa-solid fa-magnifying-glass"></i><span>View</span></a>
          </div>
        </div>
        <div class="item-b"><a href=feeManagementsearch.jsp><i class="fa-solid fa-file-lines"></i><span>Fee Management</span></a>
        </div>
        <div class="item-b"><a href="#"><i class="fa-solid fa-file-lines"></i><span>Faculty Management</span><i class="fa-solid fa-caret-down" "sidearrow"></i></a>
          <div class="sub-menu">
            <a href="#" class="sub-item"><i class="fa-regular fa-address-card"></i><span>Register</span></a>
            <a href="#" class="sub-item"><i class="fa-solid fa-magnifying-glass"></i><span>View</span></a>
          </div>
        </div>
        <div class="item-b"><a href=#><i class="fa-solid fa-file-lines"></i><span>Notice</span></a>
        </div>
        <div class="item-b"><a href=#><i class="fa-solid fa-file-lines"></i><span>Notifications</span></a>
        </div>
        <div class="item"><a href="adminloginAction.jsp?btn=logout"><i class="fa-solid fa-right-from-bracket"></i><span>Logout</span></a></div>
      </div>
    </div>
  </section>
  <script>
  const menuItems = document.querySelectorAll('.item-b');

  menuItems.forEach(item => {
    item.addEventListener('click', () => {
      item.classList.toggle('active');
    });
  });
</script>
  