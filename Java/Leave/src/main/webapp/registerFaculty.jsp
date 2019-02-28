<title>Register Faculty</title>
<jsp:include page="headerFaculty.jsp" />

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
										<option value="Faculty" selected="">Faculty</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="text" class="form-control" name="facultyName" id="name" placeholder="Enter Name">
								</div>
								<div class="form-group">
									<label class="form-label">Gender</label>
									<div class="selectgroup w-100">
										<label class="selectgroup-item">
											<input type="radio" name="facultyGender" value="female" class="selectgroup-input">
											<span class="selectgroup-button">Female</span>
										</label>
										<label class="selectgroup-item">
											<input type="radio" name="facultyGender" value="male" class="selectgroup-input">
											<span class="selectgroup-button">Male</span>
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="form-label">Branch</label>
									<select class="form-control custom-select">
										<option value="" disabled="" selected="">Select Branch</option>
										<option value="">Civil Engineering</option>
										<option value="">Chemical Enginnering</option>
										<option value="">Computer Engineering</option>
										<option value="">Electrincal Enginnering</option>
										<option value="">Electronics & Communication</option>
										<option value="IT">Information Technology</option>
										<option value="">Instrumentation & Control</option>
										<option value="">Mechanical Engineering</option>
										<option value="">Power Electronics</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Are you appointed as Hostel In-Charge for above Branch?</label>
									<div class="selectgroup w-100">
										<label class="selectgroup-item">
											<input type="radio" name="hostelincharge" value="yes" class="selectgroup-input">
											<span class="selectgroup-button">Yes</span>
										</label>
										<label class="selectgroup-item">
											<input type="radio" name="hostelincharge" value="no" class="selectgroup-input">
											<span class="selectgroup-button">No</span>
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="form-label">Position</label>
									<input type="position" class="form-control" name="facultyPosition" id="position" placeholder="Enter Position">
								</div>
								<div class="form-group">
									<label class="form-label">Email Address</label>
									<input type="email" class="form-control" name="facultyEmail" id="email"  placeholder="Enter Email">
								</div>
								<div class="form-group">
									<label class="form-label">Mobile No</label>
									<input type="mobileno" class="form-control" name="facultyMobile" id="mobile" placeholder="Enter Mobile No">
								</div>
								<div class="form-group">
									<label class="form-label">Password</label>
									<input type="password" class="form-control" name="facultyPassword" id="Password" placeholder="Enter Password" onkeyup="checkPass(); return false;">
								</div>
								<div class="form-group">
									<label class="form-label">Confirm Password</label>
									<input type="password" class="form-control" name="facultyConfirmPassword" id="ConfirmPassword" placeholder="Enter Confirm Password" onkeyup="checkPass(); return false;">
								</div>
								<div class="form-footer">
									<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
									<button type="submit" class="btn btn-primary btn-block" value="submit" name="facultyRegisterSubmit">Submit</button>
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