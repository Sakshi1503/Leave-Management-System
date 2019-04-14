<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("hod")){
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.Connect"%>
<title>Edit Profile</title>
<jsp:include page="headerHod.jsp" />


<body style="height: 91vh;">
	<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
		<h1 class="uk-heading-divider"></h1>
		<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
		<h1 class="uk-heading-divider"></h1>
	</div>

	<div class="page" style="padding: 0px; margin: 0px; height: -webkit-fill-available; background-color: #edf2fa;">
		<div class="container" style="padding: 0px; margin: 0px; height: -webkit-fill-available;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2"
					style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./hodHome.jsp" class="nav-link "><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="hodApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i>Apply For
									Leave</a>
							</li>
							<li class="nav-item">
								<a href="hodApproveUsers.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve User</a>
							</li>
							<li class="nav-item">
								<a href="hodRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
									User</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="hodEditProfile.jsp" class="nav-link active"><i class="fe fe-user"></i> Edit
									Profile</a>
							</li>

							<li class="nav-item">
								<a href="hodChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
									Password</a>
							</li>
							<li class="nav-item">
								<a href="logout.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
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
										<form class="card" action="hodEditProfile.jsp" method="post">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Edit Profile</center>
												</div>
												<div class="form-group">
													<label class="form-label">You are</label>
													<select class="form-control custom-select">
														<option value="HoD" selected="">HoD</option>
													</select>
												</div>
												<div class="form-group">
													<label class="form-label">Name</label>
													<input type="username" name="username" class="form-control"
														id="exampleUsername1" aria-describedby="nameHelp"
														pattern="[a-zA-Z][a-zA-Z\s]*"
														placeholder="Enter Name">
												</div>
												<div class="form-group">
													<label class="form-label">Contact No</label>
													<input type="mobileno" name="contactNo" class="form-control"
														id="exampleInputMobile" aria-describedby="MobileNo"
														pattern="[0-9]{10}"
														placeholder="Enter Mobile No">
												</div>

												<div class="form-group">
													<label class="form-label">Email</label>
													<input type="email" name="email" class="form-control"
														id="exampleInputEmail1" aria-describedby="emailHelp"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
														placeholder="Enter Name">
												</div>

												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit"
														name="hodEditProfile">Submit</button>
												</div>
											</div>
											<%
												if(request.getParameter("hodEditProfile")!=null)
													{
														Connect con=new Connect();
														con.Ins_Upd_Del("update hod_master set hodName='"+request.getParameter("username")+"',hodEmail='"+request.getParameter("email")+"',hodContact='"+request.getParameter("contactNo")+"' where hodEmail='"+request.getParameter("email")+"'");
														out.println("<script>alert('Record successfully updated')</script>");
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
		</div>
	</div>
</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>