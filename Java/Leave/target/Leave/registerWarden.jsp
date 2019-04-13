<title>Register Warden</title>
<jsp:include page="headerWarden.jsp" />


<body style="height: -webkit-fill-available;">

	<a href="login.jsp">
		<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
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
						<form class="card" action="" method="post">
							<div class="card-body p-6">
								<div class="card-title">
									<center>Register</center>
								</div>
								<div class="form-group">
									<label class="form-label">You are</label>
									<select class="form-control custom-select">
										<option value="Warden" selected="">Warden</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="text" class="form-control" name="wardenName" id="name"
										placeholder="Enter Name">
								</div>
								<div class="form-group">
									<label class="form-label">Gender</label>
									<div class="selectgroup w-100">
										<label class="selectgroup-item">
											<input type="radio" name="wardenGender" value="female"
												class="selectgroup-input">
											<span class="selectgroup-button">Female</span>
										</label>
										<label class="selectgroup-item">
											<input type="radio" name="wardenGender" value="male"
												class="selectgroup-input">
											<span class="selectgroup-button">Male</span>
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="form-label">Hostel</label>
									<select class="form-control custom-select">
										<option value="" disabled="" selected="">Select Hostel</option>
										<option value="hostel1">Hostel 1</option>
										<option value="hostel2">Hostel 2</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email Address</label>
									<input type="text" class="form-control" name="wardenEmail" id="email"
										placeholder="Enter Email">
								</div>
								<div class="form-group">
									<label class="form-label">Mobile No</label>
									<input type="text" class="form-control" name="wardenMobile" id="mobile"
										placeholder="Enter Mobile No">
								</div>
								<div class="form-group">
									<label class="form-label">Password</label>
									<input type="password" class="form-control" name="wardenPassword" id="Password"
										placeholder="Enter Password" onkeyup="checkPass(); return false;">
								</div>
								<div class="form-group">
									<label class="form-label">Confirm Password</label>
									<input type="password" class="form-control" name="wardenConfirmPassword"
										id="ConfirmPassword" placeholder="Enter Confirm Password"
										onkeyup="checkPass(); return false;">
								</div>
								<div class="form-footer">
									<!-- 	<button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
									<button type="submit" class="btn btn-primary btn-block" id="submitLink"
										value="submit" name="registerWardenSubmit"
										formaction="index.jsp">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
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