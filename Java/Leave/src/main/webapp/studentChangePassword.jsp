<title>Edit Profile</title>
<jsp:include page="header.jsp" />

<body style="height: -webkit-fill-available;">

	<a href="login.jsp">
		<div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
			<h1 class="uk-heading-divider"></h1>
			<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
			<h1 class="uk-heading-divider"></h1>
		</div>
	</a>
	<!---->
	<div class="page" style="padding: 0px; margin: 0px; height: -webkit-fill-available; background-color: #edf2fa;">
		<div class="container" style="padding: 0px; margin: 0px; height: -webkit-fill-available;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2" style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./studentHome.jsp" class="nav-link"><i class="fe fe-home"></i> Apply for Leave</a>
							</li>
							<li class="nav-item">
								<a href="studentEditProfile.jsp" class="nav-link"><i class="fe fe-plus"></i> Edit Profile</a>
							</li>
							<li class="nav-item">
								<a href="studentChangePassword.jsp" class="nav-link active"><i class="fe fe-lock"></i> Change Password</a>
							</li>
							<li class="nav-item">
								<a href="login.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm col-md col-lg" style="width: 100%;">
					<div class="page-single">
						<div class="container">
							<div class="row">
								<div class="col col-login mx-auto">
									<form class="card" action="" method="post">
										<div class="card-body p-6">
											<div class="card-title">
												<center>Change Password</center>
											</div>
											<div class="form-group">
												<label class="form-label">Old Password</label>
												<input type="password" class="form-control" id="oldPassword" placeholder="Enter Old Password">
											</div>
											<div class="form-group">
												<label class="form-label">New Password</label>
												<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter New Password"
												 onkeyup="checkPass(); return false;">
											</div>
											<div class="form-group">
												<label class="form-label">Confirm New Password</label>
												<input type="password" class="form-control" id="exampleInputPassword2" placeholder="Confirm New Password"
												 onkeyup="checkPass(); return false;">
											</div>
											<div class="form-footer">
												<button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				function checkPass() {

					var pass1 = document.getElementById('exampleInputPassword1');
					var pass2 = document.getElementById('exampleInputPassword2');
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