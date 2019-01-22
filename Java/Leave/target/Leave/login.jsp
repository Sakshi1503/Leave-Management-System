<title>Index</title>
<jsp:include page="header.jsp" />


<body style="height: -webkit-fill-available;">

	<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
		<h1 class="uk-heading-divider"></h1>
		<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
		<h1 class="uk-heading-divider"></h1>
	</div>
	<div class="page">
		<div class="page-single" style="width: 100%;">
			<div class="container">
				<div class="row">
					<div class="col col-login mx-auto">
						<form class="card" action="" method="post">
							<div class="card-body p-6">
								<div class="card-title">
									<center>Login</center>
								</div>
								<div class="form-group">
									<label class="form-label">You are</label>
									<select class="form-control custom-select" id="roleSelect">
										<option value="Admin">Admin</option>
										<option value="HoD">HoD</option>
										<option value="Faculty">Faculty</option>
										<option value="Warden">Warden</option>
										<option value="Student">Student</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email</label>
									<input type="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
								</div>
								<div class="form-group">
									<label class="form-label">Password</label>
									<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
								</div>

								<div class="form-footer">
									<!-- <button type="submit" class="btn btn-primary btn-block"><a href="adminHome.jsp" id="submitLink" style="color: white;">Sign in</a></button> -->
									<button type="submit" class="btn btn-primary btn-block" id="submitLink" value="submit" name="submit"
									 formaction="adminHome.jsp" style="color: white;">
										<!--< a href="registerHoD.jsp" id="submitLink" style="color: white;">Submit</a> -->Sign in</button>
								</div>
							</div>
						</form>
						<div class="text-center text-muted">
							Don't have account yet? <a href="./registerUser.jsp">Sign up</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#roleSelect').change(function () {
				var link = "adminHome.jsp".replace('admin', ($(this).val()).toLowerCase());
				$('#submitLink').attr("formaction", link);
			});
		});
	</script>

</body>

</html>