<%@page import="org.apache.naming.java.javaURLContextFactory"%> <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%> <%@page import ="java.util.*" %> <%
   String check= (String)session.getAttribute("role");
   if(check==null){
	   response.sendRedirect("adminlogin.jsp");
   }
   int numbers = (int) (Math.random() * 1000000);
   int number = (int) (Math.random() * 10000);
   %> <jsp:include page="sideNavAdmin.jsp"></jsp:include>
<section class="student-management">
  <section class="regstd">
    <div class="add-student">
      <h3 style="text-align: center">Student Registration</h3>
      <form class="form" action="action.jsp" method="post">
        <div class="container-fluid">
          <div class="row row-group">
            <div class=col-md-4>
              <h6>Admission No.:<span class="text-info"><b>UNI/2023/<%=numbers%></b></span></h6>
            </div>
            <div class="col-md-4"></div>
            <div class="col-md-4 formno">
              <h6>Form No.:<span class="text-info"><b><%=number%></b></span></h6>
            </div>
          </div>
        </div>
        <fieldset>
          <legend>Student Information</legend>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Name</label>
                  <input type="text" class="input" placeholder="Full Name as per Document" required name="name">
                  <input type="hidden" value="1" name="status">
                  <input type="hidden" value="UNI/2023/<%=numbers%>" required name="admissionNumber">
                  <input type="hidden" value=<%=number%>" required name="formNumber">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird" for="aadhar">Aadhar Number</label>
                  <input type="text" id="aadhar" oninput="formatAadhar(this)" maxlength="14" inputmode="numeric" placeholder="Enter Valid AADHAR Number" required name="aadharNumber">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Contact Number</label>
                  <input type="number" maxlength="10" class="input" placeholder="Enter valid Mobile Number" required name="contactNumber" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" />
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Alternate Contact Number</label>
                  <input type="number" maxlength="10" class="input" placeholder="Enter valid Mobile Number" required name="alternateContactNumber" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" />
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Date of Birth</label>
                  <input type="date" class="input-a" required name="dateOfBirth">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Age</label>
                  <input type="text" class="input" placeholder="Enter Age as per document" required name="age">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Gender</label>
                  <div>
                    <select id="Gender" class="input-b" required name="gender">
                      <option value="Gender">Gender</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
                      <option value="Other">Other</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Blood Group</label>
                  <div>
                    <select id="BloodGroup" class="input-b" required name="bloodGroup">
                      <option value="BloodGroup">Select Blood Group</option>
                      <option value="A+">A+</option>
                      <option value="A-">A-</option>
                      <option value="B+">B+</option>
                      <option value="B-">B-</option>
                      <option value="O+">O+</option>
                      <option value="O-">O-</option>
                      <option value="AB+">AB+</option>
                      <option value="AB-">AB-</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Email Id</label>
                  <input type="email" class="input" placeholder="Enter Valid Email Address" required name="emailAddress">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Religion</label>
                  <input type="text" class="input" placeholder="Religion" required name="religion">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Category</label>
                  <input type="text" class="input" placeholder="Category" required name="category">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Admission Date</label>
                  <input type="date" class="input" placeholder="Admission Date" required name="admissionDate">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Session From</label>
                  <div>
                    <select id="Session-from" class="input-b" required name="sessionFrom">
                      <option value="Session">Session</option>
                      <option value="2020">2020</option>
                      <option value="2019">2019</option>
                      <option value="2018">2018</option>
                      <option value="2017">2017</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Session To</label>
                  <div>
                    <select id="Session-to" class="input-b" required name="sessionTo">
                      <option value="Session">Session</option>
                      <option value="2023">2023</option>
                      <option value="2022">2022</option>
                      <option value="2021">2021</option>
                      <option value="2020">2020</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Course</label>
                  <input type="text" class="input" placeholder="Course" required name="course">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Branch</label>
                  <input type="text" class="input" placeholder="Branch" required name="branch">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Department</label>
                  <input type="text" class="input" placeholder="Department" required name="department">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Last School Attended</label>
                  <input type="text" class="input" placeholder="school" required name="lastSchoolAttended">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Last Class Attended</label>
                  <input type="text" class="input" placeholder="class" required name="lastClassAttended">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Year of Last School Attended</label>
                  <input type="month" class="input" placeholder="Last academic year" required name="yearOfLastSchoolAttended">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">UserName</label>
                  <input type="text" class="input" placeholder="username" required name="username">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Password</label>
                  <input type="text" class="input" placeholder="password" required name="password">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Confirm Password</label>
                  <input type="text" class="input" placeholder="Confirm Password" required name="confirmPassword">
                </div>
              </div>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>Parent's Information</legend>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Father's Name</label>
                  <input type="text" class="input" placeholder="Father's Name" required name="fatherName">
                  <input type="hidden" value="1" name="status">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Father's Contact Number</label>
                  <input type="number" maxlength="10" class="input" placeholder="Enter valid Mobile Number" required name="fatherContactNumber" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" />
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird"> Father's Email Id</label>
                  <input type="email" class="input" placeholder="Enter Valid Email Address" required name="fatherEmailId">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Mother's Name</label>
                  <input type="text" class="input" placeholder="Mother's Name" required name="motherName">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Mother's Contact Number</label>
                  <input type="number" maxlength="10" class="input" placeholder="Enter valid Mobile Number" required name="motherContactNumber" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" />
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird"> Mother's Email Id</label>
                  <input type="email" class="input" placeholder="Enter Valid Email Address" required name="motherEmailId">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Guardian's Name</label>
                  <input type="text" class="input" placeholder="Guardian's name" required name="guardianName">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Relation with Guardian</label>
                  <input type="text" class="input" placeholder="Relationship" required name="relationWithGuardian">
                  <input type="hidden" value="1" name="status">
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Guardian's Contact Number</label>
                  <input type="number" maxlength="10" class="input" placeholder="Enter valid Mobile Number" required name="guardianContactNumber" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" />
                </div>
              </div>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>Addresses</legend>
          <h6>PERMANENT ADDRESS:</h6>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Permanent Address</label>
                  <textarea rows="5" class="form-control input-address" name="permanentAddress"></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Area</label>
                  <textarea rows="5" class="form-control input-address" name="permanentArea"></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Landmark</label>
                  <textarea rows="5" class="form-control input-address" name="permanentLandmark"></textarea>
                </div>
              </div>
              <div class="form-group col-md-4">
                <label for="permanentState" class="requird">State</label>
                <select class="form-control inputState-a" name="permanentState">
                  <option value="SelectState">Select State</option>
                  <option value="Andra Pradesh">Andra Pradesh</option>
                  <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                  <option value="Assam">Assam</option>
                  <option value="Bihar">Bihar</option>
                  <option value="Chhattisgarh">Chhattisgarh</option>
                  <option value="Goa">Goa</option>
                  <option value="Gujarat">Gujarat</option>
                  <option value="Haryana">Haryana</option>
                  <option value="Himachal Pradesh">Himachal Pradesh</option>
                  <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                  <option value="Jharkhand">Jharkhand</option>
                  <option value="Karnataka">Karnataka</option>
                  <option value="Kerala">Kerala</option>
                  <option value="Madya Pradesh">Madya Pradesh</option>
                  <option value="Maharashtra">Maharashtra</option>
                  <option value="Manipur">Manipur</option>
                  <option value="Meghalaya">Meghalaya</option>
                  <option value="Mizoram">Mizoram</option>
                  <option value="Nagaland">Nagaland</option>
                  <option value="Orissa">Orissa</option>
                  <option value="Punjab">Punjab</option>
                  <option value="Rajasthan">Rajasthan</option>
                  <option value="Sikkim">Sikkim</option>
                  <option value="Tamil Nadu">Tamil Nadu</option>
                  <option value="Telangana">Telangana</option>
                  <option value="Tripura">Tripura</option>
                  <option value="Uttaranchal">Uttaranchal</option>
                  <option value="Uttar Pradesh">Uttar Pradesh</option>
                  <option value="West Bengal">West Bengal</option>
                  <option disabled style="background-color:#aaa; color:#fff">UNION Territories</option>
                  <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                  <option value="Chandigarh">Chandigarh</option>
                  <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                  <option value="Daman and Diu">Daman and Diu</option>
                  <option value="Delhi">Delhi</option>
                  <option value="Lakshadeep">Lakshadeep</option>
                  <option value="Pondicherry">Pondicherry</option>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="permanentDistrict">District</label>
                <select class="form-control inputDistrict-a" name="permanentDistrict">
                  <option value="">Select State First</option>
                </select>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Postal code</label>
                  <input type="number" maxlength="6" class="input" placeholder="Enter Postal code" required name="permanentPostalCode" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="6" />
                </div>
              </div>
            </div>
          </div>
          <h6>CORRESPONDANCE ADDRESS:</h6>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Correspondence Address</label>
                  <textarea rows="5" class="form-control input-address" name="correspondanceAddress"></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Area</label>
                  <textarea rows="5" class="form-control input-address" name="correspondanceArea"></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Landmark</label>
                  <textarea rows="5" class="form-control input-address" name="correspondanceLandmark"></textarea>
                </div>
              </div>
              <div class="form-group col-md-4">
                <label for="correspondanceState">State</label>
                <select class="form-control inputState" name="correspondanceState">
                  <option value="SelectState">Select State</option>
                  <option value="Andra Pradesh">Andra Pradesh</option>
                  <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                  <option value="Assam">Assam</option>
                  <option value="Bihar">Bihar</option>
                  <option value="Chhattisgarh">Chhattisgarh</option>
                  <option value="Goa">Goa</option>
                  <option value="Gujarat">Gujarat</option>
                  <option value="Haryana">Haryana</option>
                  <option value="Himachal Pradesh">Himachal Pradesh</option>
                  <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                  <option value="Jharkhand">Jharkhand</option>
                  <option value="Karnataka">Karnataka</option>
                  <option value="Kerala">Kerala</option>
                  <option value="Madya Pradesh">Madya Pradesh</option>
                  <option value="Maharashtra">Maharashtra</option>
                  <option value="Manipur">Manipur</option>
                  <option value="Meghalaya">Meghalaya</option>
                  <option value="Mizoram">Mizoram</option>
                  <option value="Nagaland">Nagaland</option>
                  <option value="Orissa">Orissa</option>
                  <option value="Punjab">Punjab</option>
                  <option value="Rajasthan">Rajasthan</option>
                  <option value="Sikkim">Sikkim</option>
                  <option value="Tamil Nadu">Tamil Nadu</option>
                  <option value="Telangana">Telangana</option>
                  <option value="Tripura">Tripura</option>
                  <option value="Uttaranchal">Uttaranchal</option>
                  <option value="Uttar Pradesh">Uttar Pradesh</option>
                  <option value="West Bengal">West Bengal</option>
                  <option disabled style="background-color:#aaa; color:#fff">UNION Territories</option>
                  <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                  <option value="Chandigarh">Chandigarh</option>
                  <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                  <option value="Daman and Diu">Daman and Diu</option>
                  <option value="Delhi">Delhi</option>
                  <option value="Lakshadeep">Lakshadeep</option>
                  <option value="Pondicherry">Pondicherry</option>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="correspondanceDistrict">District</label>
                <select class="form-control inputDistrict" name="correspondanceDistrict">
                  <option value="">Select District</option>
                </select>
              </div>
              <div class="col-md-4">
                <div class="rw-a">
                  <label class="requird">Postal code</label>
                  <input type="number" maxlength="6" class="input" placeholder="Enter Postal code" required name="correspondancePostalCode" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="6" />
                </div>
              </div>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>Facilities Availed</legend>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                <p class="requird">Transport</p>
                <input type="radio" name="transport" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="transport" value="No">
                <label for="No">No</label>
              </div>
              <div class="col-md-4">
                <p class="requird">Hostel</p>
                <input type="radio" name="hostel" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="hostel" value="No">
                <label for="No">No</label>
              </div>
              <div class="col-md-4">
                <p class="requird">library</p>
                <input type="radio" name="library" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="library" value="No">
                <label for="No">No</label>
              </div>
              <div class="col-md-4">
                <p class="requird">Sports</p>
                <input type="radio" name="sports" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="sports" value="No">
                <label for="No">No</label>
              </div>
              <div class="col-md-4">
                <p class="requird">Cultural Club</p>
                <input type="radio" name="culturalClub" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="culturalClub" value="No">
                <label for="No">No</label>
              </div>
              <div class="col-md-4">
                <p class="requird">Skill Development </p>
                <input type="radio" name="skillDevelopment" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="skillDevelopment" value="No">
                <label for="No">No</label>
              </div>
              <div class="col-md-4">
                <p class="requird">Gym</p>
                <input type="radio" name="gym" value="Yes">
                <label for="Yes">Yes</label>
                <input type="radio" name="gym" value="No">
                <label for="No">No</label>
              </div>
            </div>
          </div>
        </fieldset>
        <div class="input-field">
          <input type="Submit" name="btn" class="submit" value="submit">
        </div>
      </form>
    </div>
  </section>
</section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="javascript/script.js"></script>
</body>

</html>