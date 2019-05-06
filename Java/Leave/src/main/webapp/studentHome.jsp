<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("student")){
%>
<title>Student Home</title>
<jsp:include page="headerStudent.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>

<body style="height: -webkit-fill-available;">

	<a href="login.jsp">
		<div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
			<h1 class="uk-heading-divider"></h1>
			<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
			<h1 class="uk-heading-divider"></h1>
		</div>
	</a>
	<div class="uk-modal-container" style="padding: 0px; margin: 0px; background-color: #edf2fa;">
		<div class="container" style="height: 100%; width: 100%; padding: 0px; margin: 0px;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2"
					style="padding: 10px; margin-top: 0px; background-color: #b3d9ff;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./studentHome.jsp" class="nav-link active"><i class="fe fe-home"></i> Apply for
									Leave</a>
							</li>
							<li class="nav-item">
								<a href="studentLeaveRequests.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Your Leaves</a>
							</li>
							<li class="nav-item">
								<a href="studentEditProfile.jsp" class="nav-link"><i class="fe fe-plus"></i> Edit
									Profile</a>
							</li>

							<li class="nav-item">
								<a href="studentChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
									Password</a>
							</li>
							<li class="nav-item">
								<a href="logout.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>

				<div class="col-sm-8 col-md-9 col-lg-10" style="margin: 0px; padding: 0px; width: 100%;">
					<div class="page">
						<div class="page-single" style="width: 100%;">
							<div class="container">
								<div class="row">
									<div class="col col-login mx-auto">
										<form class="card" action="" method="post" name="studentApplyLeave">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Apply for Leave</center>
												</div>
												<div class="form-group">
													<label class="form-label">Leave from</label>
													<select class="form-control custom-select" id="roleSelect"
														name="leaveFromPlace">
														<option value="College">College</option>
														<option value="Hostel">Hostel</option>
													</select>
												</div>

												<div class="form-group">
													<label class="form-label">Type of Leave</label>
													<select class="form-control custom-select" id="roleSelect"
														name="leaveType">
														<option value="GeneralLeave">General Leave</option>
														<option value="MedicalLeave">Medical Leave</option>
													</select>
												</div>
												<div class="form-group">
													<label class="form-label">Reason</label>
													<textarea type="reason" class="form-control" id="leaveReason"
														aria-describedby="leaveReason" name="studentReason"
														placeholder="Enter reason for leave"></textarea>
												</div>
												<div class="form-group">
													<label class="form-label">Leave Duration</label>
													<div class="col-sm-12" id="leaveDurationFrom" style="padding: 0px;">
														<label class="form-label">From</label>
													</div>

													<div class="col-sm" style="padding: 0px;">
														<div class="row gutters-xs">
															<div class="col-5">
																<select name="leaveFromMonth"
																	class="form-control custom-select" onchange="date_check(); return false;">
																	<option value="">Month</option>
																	<option value="1">January</option>
																	<option value="2">February</option>
																	<option value="3">March</option>
																	<option value="4">April</option>
																	<option value="5">May</option>
																	<option selected="selected" value="6">June</option>
																	<option value="7">July</option>
																	<option value="8">August</option>
																	<option value="9">September</option>
																	<option value="10">October</option>
																	<option value="11">November</option>
																	<option value="12">December</option>
																</select>
															</div>
															<div class="col-3">
																<select name="leaveFromDay"
																	class="form-control custom-select" onchange="date_check(); return false;">
																	<option value="">Day</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																	<option value="7">7</option>
																	<option value="8">8</option>
																	<option value="9">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																	<option value="13">13</option>
																	<option value="14">14</option>
																	<option value="15">15</option>
																	<option value="16">16</option>
																	<option value="17">17</option>
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option selected="selected" value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																</select>
															</div>
															<div class="col-4">
																<select name="leaveFromYear"
																	class="form-control custom-select" onchange="date_check(); return false;">
																	<option value="">Year</option>
																	<option value="2028">2028</option>
																	<option value="2027">2027</option>
																	<option value="2026">2026</option>
																	<option value="2025">2025</option>
																	<option value="2024">2024</option>
																	<option value="2023">2023</option>
																	<option value="2022">2022</option>
																	<option value="2021">2021</option>
																	<option value="2020">2020</option>
																	<option value="2019" selected="selected">2019
																	</option>
																	<option value="2018">2018</option>
																</select>
															</div>
														</div>
													</div>

													<div class="col-sm-12" id="leaveDurationTo" style="padding: 0px; margin-top: 1rem;">
														<label class="form-label">To</label>
													</div>
													<div class="col-sm" style="padding: 0px;">
														<div class="row gutters-xs">
															<div class="col-5">
																<select name="leaveToMonth"
																	class="form-control custom-select">
																	<option value="">Month</option>
																	<option value="1">January</option>
																	<option value="2">February</option>
																	<option value="3">March</option>
																	<option value="4">April</option>
																	<option value="5">May</option>
																	<option selected="selected" value="6">June</option>
																	<option value="7">July</option>
																	<option value="8">August</option>
																	<option value="9">September</option>
																	<option value="10">October</option>
																	<option value="11">November</option>
																	<option value="12">December</option>
																</select>
															</div>
															<div class="col-3">
																<select name="leaveToDay"
																	class="form-control custom-select">
																	<option value="">Day</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																	<option value="7">7</option>
																	<option value="8">8</option>
																	<option value="9">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																	<option value="13">13</option>
																	<option value="14">14</option>
																	<option value="15">15</option>
																	<option value="16">16</option>
																	<option value="17">17</option>
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option selected="selected" value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																</select>
															</div>
															<div class="col-4">
																<select name="leaveToYear"
																	class="form-control custom-select">
																	<option value="">Year</option>
																	<option value="2028">2028</option>
																	<option value="2027">2027</option>
																	<option value="2026">2026</option>
																	<option value="2025">2025</option>
																	<option value="2024">2024</option>
																	<option value="2023">2023</option>
																	<option value="2022">2022</option>
																	<option value="2021">2021</option>
																	<option value="2020">2020</option>
																	<option value="2019" selected="selected">2019
																	</option>
																	<option value="2018">2018</option>
																</select>
															</div>
														</div>
													</div>
												</div>
<!-- 
												<div class="form-group col-sm" style="padding: 0px;">
													<div class="form-label">Upload Proof Document</div>
													<div class="custom-file">
														<input required = "required" type="file" class="custom-file-input required = "required""
															name="example-file-input required = "required"-custom"
															pattern="/^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP|.pdf|.PDF)$/">
														<label class="custom-file-label">Choose file</label>
													</div>
												</div> -->

												<div class="form-group">
													<label class="form-label">Leave Application to:</label>
													<select class="form-control custom-select" id="applyTo"
														name="applyTo">
														<%
														Connect con=null;
														ResultSet rs=null;
														ResultSetMetaData mtdt=null;
														con=new Connect();
														
														String Uname = (String)session.getAttribute("studentUsername");
														ResultSet rs2 = con.SelectData("select * from student_master where studentEmail = '"+ Uname +"'");														
														int branchID= 1;
														if(rs2.next()){
															branchID=rs2.getInt("studentBranch");
														}

														rs=con.SelectData("select facultyID,facultyName from faculty_master where isApprovedFaculty='yes' and facultyBranch="+ branchID +";");
														mtdt=rs.getMetaData();
														while(rs.next())
														{
															int ID = rs.getInt("facultyID");
													%>
														<option value="<%= ID%>"><%= rs.getString("facultyName")%>
														</option>
														<%
																}

														con.CloseConnection();
													%>
													</select>
												</div>

												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit"
														name="studentApplyLeave">Submit</button>
												</div>
											</div>
											<%
												try {
												rs2 = con.SelectData("select * from student_master where studentEmail = '"+ Uname +"';");
												int appID = 1;
												if(rs2.next()){
													out.println(rs2.getInt("studentID"));
													appID = rs2.getInt("studentID");
												}
											
												if (request.getParameter("studentApplyLeave") != null) {
												if (con.CheckData(
												"select * from leave_record where appID='" + appID + "' and appRole='student' and leaveApproved='no' and leaveRejected='no'")) {
												out.println("<script>alert('You have already applied for leave');</script>");
												}
												
												else {
												if (con.Ins_Upd_Del("insert into leave_record(appID,appRole,leaveReason,leaveFrom,leaveTo,leaveApproved,apptoID,apptoRole) VALUES("+appID+",'student','"+request.getParameter("studentReason")+"','"+request.getParameter("leaveFromYear")+"-"+request.getParameter("leaveFromMonth")+"-"+request.getParameter("leaveFromDay")+"','"+request.getParameter("leaveToYear")+"-"+request.getParameter("leaveToMonth")+"-"+request.getParameter("leaveToDay")+"','no',"+request.getParameter("applyTo")+",'hod');"))
												out.println("<script>alert('Record inserted......');</script>");
												else
												out.println("<script>alert('Record was not inserted......');</script>");
												}
												}
												} catch (Exception e) {
												out.println(e);
												}
												%>
										</form>
									</div>
								</div>
								<script type="text/javascript">
									function date_check() {
										var lFl = document.getElementById('leaveDurationFrom');
										var lTl = document.getElementById('leaveDurationTo');
										var b = document.getElementById('submitLink');
										var leaveFrom_date = document.facultyApplyLeave.leaveFromMonth.value + "-" + document.facultyApplyLeave.leaveFromDay.value + "-" + document.facultyApplyLeave.leaveFromYear.value;
										var leaveTo_date = document.facultyApplyLeave.leaveToMonth.value + "-" + document.facultyApplyLeave.leaveToDay.value + "-" + document.facultyApplyLeave.leaveToYear.value;
										var d = new Date();
										var today = (d.getMonth() + 1) + "-" + d.getDate() + "-" + d.getFullYear();
										if(new Date(leaveFrom_date) < new Date(today)){
											lFl.classList.add("state-invalid");
											if(new Date(leaveTo_date) < new Date(leaveFrom_date)){
												lTl.classList.add("state-invalid");
												b.disabled=true;
											}
											else{
												lTl.classList.remove("state-invalid");
												b.disabled=true;
											}
										
										}
										else{
											if(new Date(leaveFrom_date) > new Date(today)){
												lFl.classList.remove("state-invalid");
												if(new Date(leaveTo_date) < new Date(leaveFrom_date)){
													lTl.classList.add("state-invalid");
													b.disabled=true;
												}
												else{
													lTl.classList.remove("state-invalid");
													b.disabled=false;
												}	
											}
										}
									}
								</script>

</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>