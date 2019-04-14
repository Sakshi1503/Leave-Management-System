<%@page import="Connection.Connect"%>
<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("admin")){
%>
<title>Add Admin</title>
<jsp:include page="headerAdmin.jsp" />



<body style="height:  -webkit-fill-available;">
	<div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
		<h1 class="uk-heading-divider"></h1>
		<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
		<h1 class="uk-heading-divider"></h1>
	</div>

	<div class="uk-modal-container" style="padding: 0px; margin: 0px; background-color: #edf2fa;">
		<div class="container" style="height: 100%; width: 100%; padding: 0px; margin: 0px;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2"
					style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./adminHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveUsers.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve User</a>
							</li>
							<li class="nav-item">
								<a href="adminRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
									User</a>
							</li>
							<li class="nav-item">
								<a href="adminAddAdmin.jsp" class="nav-link active"><i class="fe fe-plus"></i> Add
									Admin</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="adminEditProfile.jsp" class="nav-link"><i class="fe fe-user"></i> Edit
									Profile</a>
							</li>

							<li class="nav-item">
								<a href="adminChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
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
										<form class="card" action="adminAddAdmin.jsp" method="post">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Add Admin</center>
												</div>
												<div class="form-group">
													<label class="form-label">Name<span
															style="color:red">*</span></label>
													<input type="text" class="form-control"
														pattern="[a-zA-Z][a-zA-Z0-9\s]*" id="exampleUsername1"
														aria-describedby="nameHelp" placeholder="Enter Name"
														name="adminName" required="">
												</div>
												<div class="form-group">
													<label class="form-label">Gender<span
															style="color:red">*</span></label>
													<div class="selectgroup w-100">
														<label class="selectgroup-item">
															<input type="radio" name="adminGender" value="Female"
																class="selectgroup-input" required="">
															<span class="selectgroup-button">Female</span>
														</label>
														<label class="selectgroup-item">
															<input type="radio" name="adminGender" value="Male"
																class="selectgroup-input" required="">
															<span class="selectgroup-button">Male</span>
														</label>
													</div>
												</div>
												<div class="form-group">
													<label class="form-label">Contact No<span
															style="color:red">*</span></label>
													<input type="text" class="form-control" pattern="[0-9]{10}"
														id="exampleInputMobile" aria-describedby="MobileNo"
														placeholder="Enter Mobile No" name="adminContact" required="">
												</div>

												<div class="form-group">
													<label class="form-label">Email<span
															style="color:red">*</span></label>
													<input type="text" class="form-control"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
														id="exampleInputEmail1" aria-describedby="emailHelp"
														placeholder="Enter Email" name="adminEmail" required="">
												</div>
												<div class="form-group">
													<label class="form-label">Designation<span
															style="color:red">*</span></label>
													<input type="text" class="form-control" id="exampleInputposition"
														aria-describedby="positionHelp"
														placeholder="Enter Current Position" name="adminPosition"
														required="">
												</div>
												<div class="form-group">
													<label class="form-label">Password<span
															style="color:red">*</span></label>
													<input type="password" class="form-control"
														title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
														pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="Password1"
														aria-describedby="passwordHelp" placeholder="Enter Password"
														name="adminPassword" required="">
												</div>
												<div class="form-group">
													<label class="form-label">Confirm Password<span
															style="color:red">*</span></label>
													<input type="password" class="form-control" id="Password2"
														placeholder="Re-enter Password"
														onkeyup="checkPass(); return false;" required="">
												</div>
												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block" id="submit"
														value="submit" name="addAdminSubmit">Submit</button>
												</div>
											</div>
											<% 
											Connect con=new Connect();
											if(request.getParameter("addAdminSubmit")!=null)
											{
												if(con.CheckData("select * from admin_master where adminEmail='"+request.getParameter("adminEmail")+"'"))
												{
													out.println("<script>alert('Record already exists......');</script>");
												}
												else
												{
													if(con.Ins_Upd_Del("insert into admin_master(adminName,adminGender,adminContact,adminEmail,adminPosition,adminPassword) values('"+request.getParameter("adminName")+"','"+request.getParameter("adminGender")+"',"+request.getParameter("adminContact")+",'"+request.getParameter("adminEmail")+"','"+request.getParameter("adminPosition")+"','"+request.getParameter("adminPassword")+"');"))
													{
														out.println("<script>alert('Record inserted......');</script>");
													}
													else
													{
														out.println("<script>alert('Record was not inserted......');</script>");
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
				</div>
				<script type="text/javascript">
					function checkPass() {

						var pass1 = document.getElementById('Password1');
						var pass2 = document.getElementById('Password2');
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
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>