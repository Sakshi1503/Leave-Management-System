<title>Register User</title>
<jsp:include page="header.jsp" />

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
									<select class="form-control custom-select" id="roleSelect">
										<option value="HoD">HoD</option>
										<option value="Faculty">Faculty</option>
										<option value="Warden">Warden</option>
										<option value="Student">Student</option>
									</select>
								</div>
								<div class="form-footer">
									<button type="submit" class="btn btn-primary btn-block" id="submitLink" value="submit" name="submit"
									 formaction="registerHoD.jsp">
										<!--< a href="registerHoD.jsp" id="submitLink" style="color: white;">Submit</a> -->Submit</button>
								</div>
							</div>
						</form>
						<div class="text-center text-muted">
							Already Registered? <a href="./index.jsp">Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#roleSelect').change(function () {
				var link = "registerHoD.jsp".replace('HoD', $(this).val());
				$('#submitLink').attr("formaction", link);
			});
		});
	</script>

</body>

</html>
<!--Link to have graphical view-->
<!--https://www.oracle.com/technetwork/articles/marx-jchart-085298.html-->