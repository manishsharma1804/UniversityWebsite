<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="sideNavAdmin.jsp"></jsp:include>

	<section class="student-management">
	
    
    				<!--  Edit Student   -->
    				
	<section class="editstd">
    	<div class="add-student">
    	<h3 style="text-align: center">Edit Student</h3>
    	<form class="form" action="">
    		<div class="container-fluid">
    			<div class="row">
    				<div class="col-12 col-md-4 col-lg-4">
    					<div class="personal-info">
							<div class="rw-a">
								<label>Name</label>
								<input type="text" class= "input" required name="Name">
								<input type="hidden" value="1" name="status">
							</div>
							
							<div class="rw-a">
								<label>Aadhar No</label>
								<input type="text" class= "input" required name="fatherName">
							</div>
											
							<div class="rw-a">
								<label>Contact No</label>
								<input type="text" class= "input" required name="contact">
							</div>
							
							<div class="rw-a">
								<label>Date of Birth</label>
								<input type="date" class= "input-a" required name="dob">
							</div>
							
							<div class="rw-a">
								<label>Age</label>
								<input type="text" class= "input" required name="age">
							</div>
							
							<div class="rw-a">
								<label>Gender</label>
								<div><select id="Gender" class= "input-b" required name="gender">
										<option value="Gender">Gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</select>
								</div>
							</div>
							
							<div class="rw-a">
								<label>Father's Name</label>
								<input type="text" class= "input" required name="fatherName">
							</div>
							
							<div class="rw-a">
								<label>Mother's Name</label>
								<input type="text" class= "input" required name="fatherName">
							</div>
						</div>
    				</div>	
    								
    				<div class="col-12 col-md-4 col-lg-4">
    					<div class="personal-info">
											
							<div class="rw-a">
								<label>Parent's Contact No</label>
								<input type="text" class= "input" required name="parentcontact">
							</div>
											
							<div class="rw-a">
								<label>Permanent Address</label>
								<textarea rows="5" class="form-control input-address" name="permanentaddress"></textarea>
							</div>
							
							<div class="rw-a">
								<label>Correspondence Address</label>
								<textarea rows="5" class="form-control input-address" name="permanentaddress"></textarea>
							</div>
							
							<div class="rw-a">
								<label for="inputState">State</label>
    								<select class="form-control" id="inputState">
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
  								
  								<div class="rw-a">
									<label for="inputDistrict">District</label>
    									<select class="form-control" id="inputDistrict">
        									<option value="">-- select one -- </option>
    									</select>
								</div>
								
								<div class="rw-a">
									<label>Postal Code</label>
									<input type="text" class= "input" required name="postalcode">
								</div>				
							</div>
    					</div>
    								<div class="col-12 col-md-4 col-lg-4">
    									<div class="personal-info">
    										<div class="rw-a">
												<label>Admission No</label>
												<input type="text" class= "input" required name="admissionno">
											</div>
											<div class="rw-a">
												<label>Username</label>
												<input type="text" class= "input" required name="username">
											</div>
											<div class="rw-a">
												<label>Password</label>
												<input type="password" class= "input" required name="password">
											</div>
											<div class="rw-a">
												<label>Email</label>
												<input type="email" class= "input" required name="email">
											</div>
											<div class="rw-a">
												<label>Institute Email</label>
												<input type="email" class= "input" required name="instituteemail">
											</div>
											<div class="rw-a">
												<label>Alternate Contact No</label>
												<input type="text" class= "input" required name="altcontact">
											</div>
											<div class="rw-a">
												<label>Blood Group</label>
												<input type="text" class= "input" required name="bloodgroup">
											</div>
											<div class="rw-a">
												<label>Guardian Contact No</label>
												<input type="text" class= "input" required name="parentcontact">
											</div>
    									</div>
    								</div>
    							</div>
    						
    				<div class="input-field">
						<input type="Submit" class="submit" value="Update Details">
					</div>
				</div>
    		</form>	
    	</div>
	</section>
</section>
	
</body>
</html>