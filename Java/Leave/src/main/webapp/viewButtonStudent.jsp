<title>ViewButtonFaculty</title>
<jsp:include page="headerStudent.jsp" />



<body style="height: -webkit-fill-available;">
	<div class="page" style="margin: 0px; padding: 0px;">
		<div class="page-single" style="width: 100%;">
			<div class="container">
				<div class="row">
					<div class="col col-login mx-auto">
						<form class="card" action="" method="post">
							<div class="card-body p-6">
								<div class="form-group">
									<label class="form-label">Role</label>
									<select class="form-control custom-select" disabled="">
										<option value="HoD" selected="">Student</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="username" class="form-control" id="exampleInputname" disabled=""
										aria-describedby="nameHelp" placeholder="A. A. Patel">
								</div>
								<div class="form-group">
									<label class="form-label">Enrollment No</label>
									<input type="username" class="form-control" id="exampleInputEnroll" disabled=""
										aria-describedby="enrollHelp" placeholder="160170116100">
								</div>
								<div class="form-group">
									<label class="form-label">Branch</label>
									<select class="form-control custom-select" disabled="">
										<option value="" disabled="">Select Branch</option>
										<option value="">Civil Engineering</option>
										<option value="">Chemical Enginnering</option>
										<option value="">Computer Engineering</option>
										<option value="">Electrincal Enginnering</option>
										<option value="">Electronics & Communication</option>
										<option value="" selected="">Information Technology</option>
										<option value="">Instrumentation & Control</option>
										<option value="">Mechanical Engineering</option>
										<option value="">Power Electronics</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Semester</label>
									<select class="form-control custom-select" disabled="">
										<option value="" disabled="">Select Semester</option>
										<option value="">1</option>
										<option value="">2</option>
										<option value="">3</option>
										<option value="">4</option>
										<option value="">5</option>
										<option value="" selected="">6</option>
										<option value="">7</option>
										<option value="">8</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email Address</label>
									<input type="email" class="form-control" id="exampleInputEmail1" disabled=""
										aria-describedby="emailHelp" placeholder="aapatel@email.com">
								</div>
								<div class="form-group">
									<label class="form-label">Mobile No</label>
									<input type="mobileno" class="form-control" id="exampleInputMobile" disabled=""
										aria-describedby="MobileNo" placeholder="8888888888">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>