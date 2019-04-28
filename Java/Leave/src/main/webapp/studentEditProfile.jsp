<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("student")){
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.Connect"%>
<title>Edit Profile</title>
<jsp:include page="headerStudent.jsp" />

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
								<a href="./studentHome.jsp" class="nav-link"><i class="fe fe-home"></i> Apply for
									Leave</a>
							</li>
							<li class="nav-item">
								<a href="studentLeaveRequests.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Your Leaves</a>
							</li>
							<li class="nav-item">
								<a href="studentEditProfile.jsp" class="nav-link active"><i class="fe fe-plus"></i> Edit
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
										<form class="card" action="" metstudent="post">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Edit Profile</center>
												</div>
												<div class="form-group">
													<label class="form-label">You are</label>
													<select class="form-control custom-select">
														<option value="Student" selected="">Student</option>
													</select>
												</div>
												<%
													Connect con=new Connect();
													String studentUsername=(String)session.getAttribute("studentUsername");
													ResultSet rs=con.SelectData("select * from student_master where studentEmail='"+studentUsername+"'");
													if(rs.next()){
												%>
												<div class="form-group">
													<label class="form-label">Enrollment No</label>
													<input type="username" class="form-control" id="exampleInputEmail1"
														value="<%=rs.getString("studentEno")%>"
														aria-describedby="emailHelp" placeholder="Enter Enrollmemt No"
														name="studentEno" disabled="">
												</div>
												<div class="form-group">
													<label class="form-label">Name</label>
													<input type="username" class="form-control" id="exampleInputEmail1"
														value="<%=rs.getString("studentName")%>"
														aria-describedby="emailHelp" pattern="[a-zA-Z][a-zA-Z\s]*"
														placeholder="Enter Name" name="studentName">
												</div>
												<div class="form-group" id="teachin" style="margin-bottom: 8px;">
													<label class="form-label">Semester:</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="1"
															class="selectgroup-input">
														<span class="selectgroup-button">I</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="2"
															class="selectgroup-input">
														<span class="selectgroup-button">II</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="3"
															class="selectgroup-input">
														<span class="selectgroup-button">III</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="4"
															class="selectgroup-input">
														<span class="selectgroup-button">IV</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="5"
															class="selectgroup-input">
														<span class="selectgroup-button">V</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="6"
															class="selectgroup-input">
														<span class="selectgroup-button">VI</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="7"
															class="selectgroup-input">
														<span class="selectgroup-button">VII</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="studentSem" value="8"
															class="selectgroup-input">
														<span class="selectgroup-button">VIII</span>
													</label>
												</div>
												<div class="form-group">
													<label class="form-label">Address</label>
													<textarea type="address" class="form-control"
														value="<%=rs.getString("studentAddress")%>"
														id="exampleInputAddress" aria-describedby="addressHelp"
														name="studentAddress" placeholder="Enter Address"></textarea>
												</div>
												<div class="form-group">
													<label class="form-label">City</label>
													<input type="city" class="form-control" id="exampleInputCity"
														value="<%=rs.getString("studentCity")%>"
														aria-describedby="cityHelp" placeholder="Enter City"
														name="studentCity">
												</div>
												<div class="form-group">
													<label class="form-label">State</label>
													<input type="state" class="form-control" id="exampleInputState"
														value="<%=rs.getString("studentState")%>"
														aria-describedby="stateHelp" placeholder="Enter State"
														name="studentState">
												</div>
												<div class="form-group">
													<label class="form-label">Are you Hosteller?</label>
													<div class="selectgroup w-100">
														<label class="selectgroup-item">
															<input type="radio" name="hosteller" id="hosteller"
																value="yes" class="selectgroup-input">
															<span class="selectgroup-button">Yes</span>
														</label>
														<label class="selectgroup-item">
															<input type="radio" name="hosteller" id="hosteller"
																value="no" class="selectgroup-input">
															<span class="selectgroup-button">No</span>
														</label>
													</div>
												</div>
												<div class="form-group">
													<label class="form-label">Email Address</label>
													<input type="email" class="form-control" id="exampleInputEmail1"
														value="<%=rs.getString("studentEmail")%>"
														aria-describedby="emailHelp"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
														placeholder="Enter Email" name="studentEmail">
												</div>
												<div class="form-group">
													<label class="form-label">Student's Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile"
														value="<%=rs.getString("studentContact")%>"
														aria-describedby="MobileNo" pattern="[0-9]{10}"
														placeholder="Student's No" name="studentContact">
												</div>
												<div class="form-group">
													<label class="form-label">Father's Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile1"
														value="<%=rs.getString("studentFatherContact")%>"
														aria-describedby="MobileNo" pattern="[0-9]{10}"
														placeholder="Father's No" name="studentFatherContact">
												</div>
												<div class="form-group">
													<label class="form-label">Mother's Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile2"
														value="<%=rs.getString("studentMotherContact")%>"
														aria-describedby="MobileNo" pattern="[0-9]{10}"
														placeholder="Mother's No" name="studentMotherContact">
												</div>
												<div class="form-footer">
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit"
														name="studentEditProfile">Submit</button>
												</div>
											</div>
											<%
														if(request.getParameter("studentEditProfile")!=null)
													{
														int s_studentID=rs.getInt("studentID");
														if(con.Ins_Upd_Del("update student_master set studentName='"+request.getParameter("studentName")+"', studentSem="+request.getParameter("studentSem")+", studentAddress='"+request.getParameter("studentAddress")+"', studentCity='"+request.getParameter("studentCity")+"', studentState='"+request.getParameter("studentState")+"', studentEmail='"+request.getParameter("studentEmail")+"', studentContact='"+request.getParameter("studentContact")+"', studentFatherContact='"+request.getParameter("studentFatherContact")+"', studentMotherContact='"+request.getParameter("studentMotherContact")+"',studentHosteller='"+request.getParameter("hosteller")+"' where studentID="+s_studentID+""))
														{
															out.println("<script>alert('Record Updated Successfully.')</script>");
														}
														else{
															out.println("<script>alert('There was a problem in updating your Information.')</script>");
														}
													}
												}
											%>
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
</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>