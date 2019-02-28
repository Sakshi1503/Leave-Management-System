
<%@page import="Connection.Connect"%>
<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<title>Add Admin</title>
<jsp:include page="headerAdmin.jsp" />



<body style="height: 91vh;">
	<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
		<h1 class="uk-heading-divider"></h1>
		<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
		<h1 class="uk-heading-divider"></h1>
	</div>

	<div class="page" style="padding: 0px; margin: 0px; height: -webkit-fill-available; background-color: #edf2fa;">
		<div class="container" style="padding: 0px; margin: 0px; height: -webkit-fill-available;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2" style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./adminHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveUsers.jsp" class="nav-link"><i class="fe fe-check-circle"></i> Approve User</a>
							</li>
							<li class="nav-item">
								<a href="adminRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove User</a>
							</li>
							<li class="nav-item">
								<a href="adminAddAdmin.jsp" class="nav-link active"><i class="fe fe-plus"></i> Add Admin</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="adminEditProfile.jsp" class="nav-link"><i class="fe fe-user"></i> Edit Profile</a>
							</li>

							<li class="nav-item">
								<a href="adminChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change Password</a>
							</li>
							<li class="nav-item">
								<a href="login.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm col-md col-lg" style="margin: 0px; padding: 0px; width: 100%; height: max-content;">


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
													<label class="form-label">Name</label>
													<input type="text" class="form-control" id="exampleUsername1" aria-describedby="nameHelp" placeholder="Enter Name" name="adminName">
												</div>
												<div class="form-group">
													<label class="form-label">Gender</label>
													<div class="selectgroup w-100">
														<label class="selectgroup-item">
															<input type="radio" name="adminGender" value="female" class="selectgroup-input">
															<span class="selectgroup-button">Female</span>
														</label>
														<label class="selectgroup-item">
															<input type="radio" name="adminGender" value="male" class="selectgroup-input">
															<span class="selectgroup-button">Male</span>
														</label>
													</div>
												</div>
												<div class="form-group">
													<label class="form-label">Contact No</label>
													<input type="text" class="form-control" id="exampleInputMobile" aria-describedby="MobileNo"
													 placeholder="Enter Mobile No" name="adminContact">
												</div>

												<div class="form-group">
													<label class="form-label">Email</label>
													<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
													 placeholder="Enter Email" name="adminEmail">
												</div>
												<div class="form-group">
													<label class="form-label">Designation</label>
													<input type="text" class="form-control" id="exampleInputposition" aria-describedby="positionHelp"
													 placeholder="Enter Current Position" name="adminPosition">
												</div>
												<div class="form-group">
													<label class="form-label">Password</label>
													<input type="text" class="form-control" id="exampleInputpasssword" aria-describedby="passwordHelp" placeholder="Enter Password"
													 name="adminPassword">
												</div>

												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block" id="submitLink" value="submit" name="addAdminSubmit">Submit</button>
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
			</div>
</body>

</html>