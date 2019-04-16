<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("faculty")){
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.Connect"%>
<title>Edit Profile</title>
<jsp:include page="headerFaculty.jsp" />

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
								<a href="./facultyHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="facultyApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i> Apply for
									Leave</a>
							</li>
							<li class="nav-item">
								<a href="facultyApproveStudent.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve Student</a>
							</li>
							<li class="nav-item">
								<a href="facultyRemoveStudent.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
									Student</a>
							</li>
							<li class="nav-item">
								<a href="facultyApproveLeave.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve Leave</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="facultyEditProfile.jsp" class="nav-link active"><i class="fe fe-user"></i> Edit
									Profile</a>
							</li>
							<li class="nav-item">
								<a href="facultyChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
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
										<form class="card" action="facultyEditProfile.jsp" method="post">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Edit Profile</center>
												</div>
												<div class="form-group">
													<label class="form-label">You are</label>
													<select class="form-control custom-select">
														<option value="Faculty" selected="">Faculty</option>
													</select>
												</div>
												<div class="form-group">
													<label class="form-label">Name</label>
													<input type="username" name="username" class="form-control"
														id="exampleInputname" aria-describedby="nameHelp" pattern="[a-zA-Z][a-zA-Z\s]*"
														placeholder="Enter Name">
												</div>
												<div class="form-group">
													<label class="form-label">Contact No</label>
													<input type="mobileno" name="contactNo" class="form-control"
														id="exampleInputMobile" aria-describedby="MobileNo"
														pattern="[0-9]{10}"
														placeholder="Mobile No">
												</div>
												<div class="form-group">
													<label class="form-label">Email ID</label>
													<input type="email" name="email" class="form-control"
														id="exampleInputEmail1" aria-describedby="emailHelp"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
														placeholder="Enter Email">
												</div>
												<div class="form-group">
													<label class="form-label">Branch ID</label>
													<input type="branch" name="branchID" class="form-control"
														id="exampleInputbranch" aria-describedby="branchHelp"
														placeholder="Enter branch">
												</div>
												<div class="form-group">
													<label class="form-label">Designation</label>
													<input type="position" name="designation" class="form-control"
														id="exampleInputposition" aria-describedby="positionHelp"
														placeholder="Enter Current Position">
												</div>
												<div class="form-group">
													<label class="form-label">Is appointed as a hostel incharge?</label>
													<div class="selectgroup w-100">
														<label class="selectgroup-item">
															<input type="radio" name="hosteller" id="hosteller"
																value="Yes" class="selectgroup-input">
															<span class="selectgroup-button">Yes</span>
														</label>
														<label class="selectgroup-item">
															<input type="radio" name="hosteller" id="hosteller"
																value="No" class="selectgroup-input">
															<span class="selectgroup-button">No</span>
														</label>
													</div>
												</div>
												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit"
														name="facultyEditProfile">Submit</button>
												</div>
											</div>
											<%
												if(request.getParameter("facultyEditProfile")!=null)
													{
														Connect con=new Connect();
														con.Ins_Upd_Del("update faculty_master set facultyName='"+request.getParameter("username")+"',facultyEmail='"+request.getParameter("email")+"',facultyContact='"+request.getParameter("contactNo")+"',facultyBranch="+request.getParameter("branchID")+",facultyPosition='"+request.getParameter("designation")+"',isHostelIncharge='"+request.getParameter("hosteller")+"' where facultyEmail='"+request.getParameter("email")+"'");
														out.println("<script>alert('Record successfully updated')</script>");
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
								if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'Yes') {
									$('#hostel').show();
								}
								else if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'No') {
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