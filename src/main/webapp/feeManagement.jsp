<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%> <%@page import="com.universitywebsite.dashboard.model.Dashboard"%> <%@page import="com.universitywebsite.dashboard.dao.DashboardDao"%> <%
String formNumber=(String)session.getAttribute("formNumber");
String name=(String)session.getAttribute("name");
String fathername=(String)session.getAttribute("fatherName");
String course=(String)session.getAttribute("course");
String department=(String)session.getAttribute("department");
String admissionNumber=(String)session.getAttribute("admissionNumber");
%> <%
String check= (String)session.getAttribute("role");
if(check==null){
	   response.sendRedirect("adminlogin.jsp");
}
   int number = (int) (Math.random() * 10000);
   %> <jsp:include page="sideNavAdmin.jsp"></jsp:include>
<section class="student-management">
  <section class="searchstd">
    <div class="add-student">
      <h3 style="text-align: center">Fee Management</h3>
      <form class="form" action="action.jsp" method="post">
        <div class="search">
          <input type="text" class="input" required="required" placeholder="Enter Student ID to search(Form number is your Student ID)" readonly="readonly" value="<%=formNumber %>" name="searchfield">
          <input type="Submit" class="submitsearch">
          <i class="fa-solid fa-search searchhh"></i>
        </div>
        <fieldset>
          <legend>Student Information</legend>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Name</label>
                  <input type="text" class="input" placeholder="Full Name as per Document" readonly="readonly" value="<%=name %>" required name="name">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Father's Name</label>
                  <input type="text" class="input" placeholder="Father's Name" readonly="readonly" value="<%=fathername %>" required name="fatherName">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Course</label>
                  <input type="text" class="input" placeholder="Course" readonly="readonly" value="<%=course %>" required name="course">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Department</label>
                  <input type="text" class="input" placeholder="Department" readonly="readonly" value="<%=department %>" required name="department">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Admission Number</label>
                  <input type="text" class="input" placeholder="Admission Number" readonly="readonly" value="<%=admissionNumber %>" required name="admissionNumber">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Form Number</label>
                  <input type="text" class="input" placeholder="Form Number" readonly="readonly" value="<%=formNumber %>" required name="formNumber">
                </div>
              </div>
            </div>
          </div>
        </fieldset>
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-3"></div>
            <div class="col-md-6">
              <fieldset>
                <legend>Payment Detail</legend>
                <div class="container-fluid">
                  <div class="row row-group">
                    <div class=col-md-6>
                      <h6>Receipt No:<span class="text-infoo"><b>UNI/2023/<%=number%></b></span></h6>
                    </div>
                    <div class="col-md-6 formno">
                      <h6><span class="text-infoo"><b id="datetime"></b></span></h6>
                    </div>
                  </div>
                </div>
                <div class="container-fluid">
                  <div class="row row-group">
                    <div class=col-md-6>
                      <div class="rw-a">
                        <label class="requird">Payment Made Till</label>
                        <div>
                          <select id="Month" class="input-b" required name="paymentMadetill">
                            <option value="Select Month">Select Month</option>
                            <option value="January">January</option>
                            <option value="February">February</option>
                            <option value="March">March</option>
                            <option value="April">April</option>
                            <option value="May">May</option>
                            <option value="June">June</option>
                            <option value="July">July</option>
                            <option value="August">August</option>
                            <option value="September">September</option>
                            <option value="October">October</option>
                            <option value="November">November</option>
                            <option value="December">December</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class=col-md-6>
                      <div class="rw-a">
                        <label class="requird">Payment Mode</label>
                        <div>
                          <select id="modeOfPayment" class="input-b" required name="modeOfPayment">
                            <option value="Cash">Cash</option>
                            <option value="Debit Card">Debit Card</option>
                            <option value="Credit Card">Credit Card</option>
                            <option value="Cheque">Cheque</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <table style="width: 100%; height: 100%; border: 1px solid black;">
                    <thead style="border: 1px solid black">
                      <tr style="border: 1px solid black">
                        <th style="width: 20%">Serial No.</th>
                        <th style="width: 60%">Payment</th>
                        <th style="width: 20%">Amount</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>01</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_a" class="amount"></td>
                      </tr>
                      <tr>
                        <td>02</td>
                        <td>Tuition Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_b" class="amount"></td>
                      </tr>
                      <tr>
                        <td>03</td>
                        <td>Registration Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_c" class="amount"></td>
                      </tr>
                      <tr>
                        <td>04</td>
                        <td>Form Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_d" class="amount"></td>
                      </tr>
                      <tr>
                        <td>05</td>
                        <td>Transport Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_e" class="amount"></td>
                      </tr>
                      <tr>
                        <td>06</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_f" class="amount"></td>
                      </tr>
                      <tr>
                        <td>07</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_g" class="amount"></td>
                      </tr>
                      <tr>
                        <td>08</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_h" class="amount"></td>
                      </tr>
                      <tr>
                        <td>09</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_i" class="amount"></td>
                      </tr>
                      <tr>
                        <td>10</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_j" class="amount"></td>
                      </tr>
                      <tr>
                        <td>11</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_k" class="amount"></td>
                      </tr>
                      <tr>
                        <td>12</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_l" class="amount"></td>
                      </tr>
                      <tr>
                        <td>13</td>
                        <td>Admission Fee</td>
                        <td><input type="number" onkeyup="findTotal()" name="input_m" class="amount"></td>
                      </tr>
                      <tr>
                        <th colspan="2" style="text-align: right;">total</th>
                        <td><input type="number" readonly="readonly" onkeyup="findDues()" id="total" class="total" name="total"></td>
                      </tr>
                      <tr>
                        <th colspan="2" style="text-align: right;">Paid</th>
                        <td><input type="number" onkeyup="findDues()" id="paid" class="paid" name="paid"></td>
                      </tr>
                      <tr>
                        <th colspan="2" style="text-align: right;">Dues</th>
                        <td><input type="number" readonly="readonly" id="dues" class="dues" name="duespending"></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="btnnn">
        <!-- Call the generateInvoice function when the button is clicked -->
        <input type="submit" class="submitsearch-r darkred-button" name="btn" value="Make Payment" onclick="generateInvoice()">
    </div>
              </fieldset>
            </div>
            <div class="col-md-3">
           <!-- <div class="col-md-5">
               <fieldset>
                <legend>Facilities Taken</legend>
                <div class="container-fluid">
                  <div class="row row-group">
                    <div class="col-md-6">
                      <div class="rw-a">
                        <label class="lablename"><b>Transport</b></label>
                        <div>
                          <input type="radio" id="transport" name="transport" value="yes" readonly="readonly" /> Yes <input type="radio" id="transport" name="transport" value="no" readonly="readonly" /> No
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="rw-a">
                        <label class="lablename"><b>Hosteler</b></label>
                        <div>
                          <input type="radio" id="hosteler" name="hosteler" value="yes" readonly="readonly" /> Yes <input type="radio" id="hosteler" name="hosteler" value="no" readonly="readonly" /> No
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row row-group">
                    <div class="col-md-6">
                      <div class="rw-a">
                        <label class="lablename"><b>Sports Club</b></label>
                        <div>
                          <input type="radio" id="sports" name="sports" value="yes" readonly="readonly" /> Yes <input type="radio" id="sports" name="sports" value="no" readonly="readonly" /> No
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="rw-a">
                        <label class="lablename"><b>Cultural Club</b></label>
                        <div>
                          <input type="radio" id="cultural" name="cultural" value="yes" readonly="readonly" /> Yes <input type="radio" id="cultural" name="cultural" value="no" readonly="readonly" /> No
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row row-group">
                    <div class="col-md-6">
                      <div class="rw-a">
                        <label class="lablename"><b>Library</b></label>
                        <div>
                          <input type="radio" id="library" name="library" value="yes" readonly="readonly" /> Yes <input type="radio" id="library" name="library" value="no" readonly="readonly" /> No
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="rw-a">
                        <label class="lablename"><b>Skill Development</b></label>
                        <div>
                          <input type="radio" id="skill" name="skill" value="yes" readonly="readonly" /> Yes <input type="radio" id="skill" name="skill" value="no" readonly="readonly" /> No
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </fieldset> -->
            </div> 
          </div>
        </div>
      </form>
    </div>
  </section>
</section>

<script>
  function findTotal() {
    var arr = document.getElementsByClassName('amount');
    var tot = 0;
    for (var i = 0; i < arr.length; i++) {
      if (parseFloat(arr[i].value)) tot += parseFloat(arr[i].value);
    }
    document.getElementById('total').value = tot;
  }

  function findDues() {
    var total = document.getElementById('total').value;
    var paid = document.getElementById('paid').value;
    var due = 0;
    due = total - paid;
    document.getElementById('dues').value = due;
  }

  function updateTime() {
    var currentDate = new Date();
    var dateTimeElement = document.getElementById("datetime");
    // Format the date and time without "at"
    var formattedDateTime = currentDate.toLocaleString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric',
      hour: 'numeric',
      minute: 'numeric'
    }).replace(" at", "");
    dateTimeElement.textContent = formattedDateTime;
  }
  // Update time every second
  setInterval(updateTime, 1000);
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>