<%
	String check= (String)session.getAttribute("role");
	
	if(check== null){
		response.sendRedirect("adminlogin.jsp");
	}
%> <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <jsp:include page="sideNavAdmin.jsp"></jsp:include>
<section class="dasboard-1">
  <section>
    <div class="jumbotron">
      <h1 class="display-4">Welcome to the Dashboard!</h1>
      <p class="lead">ABC University</p>
      <hr class="my-4">
      <p>ABC University, Ranchi has been established and incorporated by Jharkhand State Legislature <br>through its official Gazette and recognized as per section 2(f) of UGC Act 1956.</p>
      <a class="btn btn-primary btn-lg" href="index.jsp" role="button">Learn more</a>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 col-md-3 col-lg-3">
          <div class="cardd">
            <canvas id="feeReportGraph"></canvas>
          </div>
        </div>
        <div class="col-12 col-md-3 col-lg-3">
          <div class="cardd">
            <canvas id="totalStudentsGraph"></canvas>
          </div>
        </div>
        <div class="col-12 col-md-3 col-lg-3">
          <div class="cardd">
            <canvas id="academicGraph"></canvas>
          </div>
        </div>
        <div class="col-12 col-md-3 col-lg-3">
          <div class="cardd">
            <canvas id="otherGraph"></canvas>
          </div>
        </div>
      </div>
    </div>
  </section>
  <div class="container mt-5">
    <div class="row">
      <div class="col-12">
        <h2>Academic Calendar</h2>
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Date</th>
              <th>Event</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>June 25, 2023</td>
              <td>Orientation Day</td>
            </tr>
            <tr>
              <td>July 2, 2023</td>
              <td>First Day of Classes</td>
            </tr>
            <tr>
              <td>August 10, 2023</td>
              <td>Midterm Examinations</td>
            </tr>
            <tr>
              <td>September 5, 2023</td>
              <td>Last Day to Drop Courses</td>
            </tr>
            <tr>
              <td>October 21, 2023</td>
              <td>Final Examinations Begin</td>
            </tr>
            <tr>
              <td>November 10, 2023</td>
              <td>End of Fall Semester</td>
            </tr>
            <!-- Add more events here -->
          </tbody>
        </table>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-12">
        <h2>Useful Static Elements</h2>
        <div class="alert alert-info"> This is a static information message. </div>
      </div>
    </div>
  </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>
  // Sample data for the academic graph
  const academicData = {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [{
      label: "Academic Performance",
      data: [75, 80, 85, 90, 88, 92, 95],
      borderColor: "rgba(75, 192, 192, 1)",
      backgroundColor: "rgba(75, 192, 192, 0.2)",
      fill: true
    }]
  };
  // Chart configuration for academic graph
  const academicConfig = {
    type: "line",
    data: academicData,
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true,
          max: 100
        }
      }
    }
  };
  // Create academic graph
  const academicGraph = new Chart(document.getElementById("academicGraph"), academicConfig);
  // Sample data for the other graph
  const otherData = {
    labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
    datasets: [{
      label: "Data",
      data: [12, 19, 3, 5, 2, 3],
      backgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(255, 206, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(153, 102, 255, 0.2)", "rgba(255, 159, 64, 0.2)"],
      borderColor: ["rgba(255, 99, 132, 1)", "rgba(54, 162, 235, 1)", "rgba(255, 206, 86, 1)", "rgba(75, 192, 192, 1)", "rgba(153, 102, 255, 1)", "rgba(255, 159, 64, 1)"],
      borderWidth: 1
    }]
  };
  // Chart configuration for other graph
  const otherConfig = {
    type: "bar",
    data: otherData,
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  };
  // Create other graph
  const otherGraph = new Chart(document.getElementById("otherGraph"), otherConfig);
</script>
<script>
  // Sample data for the fee report graph
  const feeReportData = {
    labels: ["January", "February", "March", "April", "May", "June"],
    datasets: [{
      label: "Fee Report",
      data: [5000, 4500, 6000, 5500, 6500, 7000],
      borderColor: "rgba(75, 192, 192, 1)",
      backgroundColor: "rgba(75, 192, 192, 0.2)",
      fill: true
    }]
  };
  // Chart configuration for the fee report graph
  const feeReportConfig = {
    type: "line",
    data: feeReportData,
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true,
          max: 8000
        }
      }
    }
  };
  // Create fee report graph
  const feeReportGraph = new Chart(document.getElementById("feeReportGraph"), feeReportConfig);
  // Sample data for the total students graph
  const totalStudentsData = {
    labels: ["January", "February", "March", "April", "May", "June"],
    datasets: [{
      label: "Total Students",
      data: [450, 470, 490, 520, 550, 580],
      backgroundColor: "rgba(54, 162, 235, 0.2)",
      borderColor: "rgba(54, 162, 235, 1)",
      borderWidth: 1
    }]
  };
  // Chart configuration for the total students graph
  const totalStudentsConfig = {
    type: "bar",
    data: totalStudentsData,
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  };
  // Create total students graph
  const totalStudentsGraph = new Chart(document.getElementById("totalStudentsGraph"), totalStudentsConfig);
</script>
</body>

</html>