<%@page import="Connection.Connect"%>
<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<title>Register Student</title>
<jsp:include page="headerStudent.jsp" />

<body style="height: -webkit-fill-available;">

	<a href="login.jsp">
		<div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
			<h1 class="uk-heading-divider"></h1>
			<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
			<h1 class="uk-heading-divider"></h1>
		</div>
	</a>
	<div class="page">
		<div class="page-single" style="width: 100%;">
			<div class="container">
				<div class="row">
					<div class="col col-login mx-auto">
						<form class="card" action="registerStudent.jsp" method="post">
							<div class="card-body p-6">
								<div class="card-title">
									<center>Register</center>
								</div>
								<div class="form-group">
									<label class="form-label">You are</label>
									<select class="form-control custom-select">
										<option value="Student" selected="">Student</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="text" name="studentName" class="form-control" id="name"
										aria-describedby="emailHelp" pattern="[a-zA-Z][a-zA-Z\s]*" placeholder="Enter Name">
								</div>
								<div class="form-group">
									<label class="form-label">Enrollment No</label>
									<input type="text" name="studentEno" class="form-control" id="enrollmentno"
										aria-describedby="emailHelp" pattern="[1][6][0][1][7][0][1][1][6][0][0-9][0-9]" placeholder="Enter Enrollmemt No">
								</div>
								<div class="form-group">
									<label class="form-label">Gender</label>
									<div class="selectgroup w-100">
										<label class="selectgroup-item">
											<input type="radio" name="studentGender" value="female"
												class="selectgroup-input">
											<span class="selectgroup-button">Female</span>
										</label>
										<label class="selectgroup-item">
											<input type="radio" name="studentGender" value="male"
												class="selectgroup-input">
											<span class="selectgroup-button">Male</span>
										</label>
									</div>
								</div>
								<div class="form-group" id="teachin" style="margin-bottom: 8px;">
									<label class="form-label">Semester:</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="1" class="selectgroup-input">
										<span class="selectgroup-button">I</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="2" class="selectgroup-input">
										<span class="selectgroup-button">II</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="3" class="selectgroup-input">
										<span class="selectgroup-button">III</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="4" class="selectgroup-input">
										<span class="selectgroup-button">IV</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="5" class="selectgroup-input">
										<span class="selectgroup-button">V</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="6" class="selectgroup-input">
										<span class="selectgroup-button">VI</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="7" class="selectgroup-input">
										<span class="selectgroup-button">VII</span>
									</label>
									<label class="selectgroup-item">
										<input type="radio" name="studentSem" value="8" class="selectgroup-input">
										<span class="selectgroup-button">VIII</span>
									</label>
								</div>
								<div class="form-group">
									<label class="form-label">Address</label>
									<textarea type="textarea" name="studentAddress" class="form-control" id="address"
										aria-describedby="addressHelp" placeholder="Enter Address"></textarea>
								</div>
								<div class="form-group">
									<label class="form-label">City</label>
									<input type="text" name="studentCity" class="form-control" id="city"
										aria-describedby="cityHelp" placeholder="Enter City">
								</div>
								<div class="form-group">
									<label class="form-label">State</label>
									<input type="text" name="studentState" class="form-control" id="state"
										aria-describedby="stateHelp" placeholder="Enter State">
								</div>
								<div class="form-group">
									<label class="form-label">Are you Hosteller?</label>
									<div class="selectgroup w-100">
										<label class="selectgroup-item">
											<input type="radio" name="studentHosteller" id="hosteller" value="yes"
												class="selectgroup-input">
											<span class="selectgroup-button">Yes</span>
										</label>
										<label class="selectgroup-item">
											<input type="radio" name="studentHosteller" id="hosteller" value="No"
												class="selectgroup-input">
											<span class="selectgroup-button">No</span>
										</label>
									</div>
								</div>
								<div class="form-group" name="hostel" id="hostel" style="display: none;">
									<label class="form-label">Hostel</label>
									<select class="form-control custom-select">
										<option value="" disabled="" selected="">Select Hostel</option>
										<option value="">Hostel 1</option>
										<option value="">Hostel 2</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email Address</label>
									<input type="text" name="studentEmail" class="form-control" id="email"
										aria-describedby="emailHelp" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Enter Email">
								</div>
								<div class="form-group">
									<label class="form-label">Mobile No</label>
									<input type="text" name="studentContact" class="form-control" id="mobile"
										aria-describedby="MobileNo" pattern="[0-9]{10}" placeholder="Enter Mobile No">
								</div>
								<div class="form-group">
									<label class="form-label">Father's Contact No.</label>
									<input type="text" name="studentFatherContact" class="form-control"
										id="fathercontact" pattern="[0-9]{10}" aria-describedby="MobileNo"
										placeholder="Enter Father's Contact No">
								</div>
								<div class="form-group">
									<label class="form-label">Mother's Contact No.</label>
									<input type="text" name="studentMotherContact" class="form-control"
										id="mothercontact" pattern="[0-9]{10}" aria-describedby="MobileNo"
										placeholder="Enter Mother's Contact No">
								</div>
								<div class="form-group">
									<label class="form-label">Password</label>
									<input type="password" name="studentPassword" class="form-control" id="Password"
										placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" onkeyup="checkPass(); return false;">
								</div>
								<div class="form-group">
									<label class="form-label">Confirm Password</label>
									<input type="password" name="studentPasswordCheck" class="form-control"
										id="ConfirmPassword" placeholder="Enter Confirm Password"
										onkeyup="checkPass(); return false;">
								</div>
								<div class="form-footer">
									<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
									<button type="submit" value="Submit" name="studentRegisterSubmit"
										class="btn btn-primary btn-block" id="submit">Submit</button>
									<%										
															try {
																					Connect con=new Connect();
																					if(request.getParameter("studentRegisterSubmit")!=null)
																					{
																						if(con.CheckData("select * from student_master where studentEno="+request.getParameter("studentEno")+""))
																						{
																							out.println("<script>alert('Record already exists......');</script>");
																						}
																						else
																						{
																							RequestDispatcher rd;
																							String str=request.getParameter("studentEno");
																							String branchstr=str.substring(7,9);
																							int branch=Integer.parseInt(branchstr);
																							System.out.println(branch);
																							if(con.Ins_Upd_Del("insert into student_master(studentEno,studentName,studentSem,studentAddress,studentCity,studentState,studentEmail,studentContact,studentFatherContact,studentMotherContact,studentHosteller,studentPassword,studentBranch,studentGender,isApprovedStudent) values('"+request.getParameter("studentEno")+"','"+request.getParameter("studentName")+"',"+request.getParameter("studentSem")+",'"+request.getParameter("studentAddress")+"','"+request.getParameter("studentCity")+"','"+request.getParameter("studentState")+"','"+request.getParameter("studentEmail")+"','"+request.getParameter("studentContact")+"','"+request.getParameter("studentFatherContact")+"','"+request.getParameter("studentMotherContact")+"','"+request.getParameter("studentHosteller")+"','"+request.getParameter("studentPassword")+"',"+branch+",'"+request.getParameter("studentGender")+"','no');"))
																							{
																								out.println("<script>alert('Record inserted......');</script>");
																							}
																							else
																							{
																								out.println("<script>alert('Record was not inserted......');</script>");
																							}
																						}
																						String site = new String("http://localhost:8080/Leave/login.jsp");
																						response.setStatus(response.SC_MOVED_TEMPORARILY);
																						response.setHeader("Location", site);
																					}
																	}
																	catch(Exception e){
																		out.println(e);
																	}
%>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function () {
			$('input[type="radio"]').click(function () {
				if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'yes') {
					$('#hostel').show();
				}
				else if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'no') {
					$('#hostel').hide();
				}
				else { }
			});
		});
	</script>

	<script type="text/javascript">
		function checkPass() {

			var pass1 = document.getElementById('Password');
			var pass2 = document.getElementById('ConfirmPassword');
			var b = document.getElementById('submit')

			if (pass1.value == 0) {
				b.disabled = true;
			} else if (pass1.value == pass2.value) {
				pass2.classList.remove("state-invalid");
				b.disabled = false;
				pass2.classList.add("state-valid");
			} else {
				pass2.classList.remove("state-valid");
				b.disabled = true;
				pass2.classList.add("state-invalid");

			}
		}

	</script>
</body>

</html>

<!--insert into student_master(studentEno,studentName,studentSem,studentAddress,studentCity,studentState,studentEmail,studentContact,studentFatherContact,studentMotherContact,studentHosteller,studentPassword,studentBranch) values('asad','asd',1,'aad','aaaa','aaaa','aaaa','aaaa','aaa','a','a','a',17);-->