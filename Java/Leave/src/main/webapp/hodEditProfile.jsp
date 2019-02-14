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
				<div class="col-sm-4 col-md-3 col-lg-2" style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./hodHome.jsp" class="nav-link "><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="hodApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i>Apply For Leave</a>
							</li>
							<li class="nav-item">
								<a href="hodApproveUsers.jsp" class="nav-link"><i class="fe fe-check-circle"></i> Approve User</a>
							</li>
							<li class="nav-item">
								<a href="hodRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove User</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="hodEditProfile.jsp" class="nav-link active"><i class="fe fe-user"></i> Edit Profile</a>
							</li>

							<li class="nav-item">
								<a href="hodChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change Password</a>
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
										<form class="card" action="" method="post">
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
													<input type="username" class="form-control" id="exampleUsername1" aria-describedby="nameHelp" placeholder="Enter Name">
												</div>
												<div class="form-group">
													<label class="form-label">Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile" aria-describedby="MobileNo"
													 placeholder="Enter Mobile No">
												</div>

												<div class="form-group">
													<label class="form-label">Email</label>
													<input type="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
													 placeholder="Enter Name">
												</div>

												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block" id="submitLink" value="submit" name="submit"
													 formaction="index.jsp">Submit</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- 			</div>
							</div>
						</div>
					</div>

				</div> -->
			</div>
		</div>
	</div>
</body>

</html>