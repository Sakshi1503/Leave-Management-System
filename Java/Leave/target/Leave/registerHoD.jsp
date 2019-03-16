<title>Register HOD</title>
<jsp:include page="headerHod.jsp" />

<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>

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
						<form class="card" action="login.jsp" method="post">
							<div class="card-body p-6">
								<div class="card-title">
									<center>Register</center>
								</div>
								<div class="form-group">
									<label class="form-label">You are</label>
									<select class="form-control custom-select">
										<option value="HoD" selected="">HoD</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="text" name="hodName" class="form-control" placeholder="Enter Name">
								</div>
								<div class="form-group">
									<label class="form-label">Gender</label>
									<div class="selectgroup w-100">
										<label class="selectgroup-item">
											<input type="radio" name="hodGender" value="female" class="selectgroup-input">
											<span class="selectgroup-button">Female</span>
										</label>
										<label class="selectgroup-item">
											<input type="radio" name="hodGender" value="male" class="selectgroup-input">
											<span class="selectgroup-button">Male</span>
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="form-label">Branch</label>
									<select class="form-control custom-select" name="hodBranch">
										<option value="" disabled="" selected="">Select Branch</option>
										<option value="17" name="hodBranch">Civil Engineering</option>
										<option value="2" name="hodBranch">Chemical Enginnering</option>
										<option value="3" name="hodBranch">Computer Engineering</option>
										<option value="4" name="hodBranch">Electrincal Enginnering</option>
										<option value="5" name="hodBranch">Electronics & Communication</option>
										<option value="6" name="hodBranch">Information Technology</option>
										<option value="7" name="hodBranch">Instrumentation & Control</option>
										<option value="8" name="hodBranch">Mechanical Engineering</option>
										<option value="9" name="hodBranch">Power Electronics</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email Address</label>
									<input type="text" name="hodEmail" class="form-control" placeholder="Enter Email">
								</div>
								<div class="form-group">
									<label class="form-label">Mobile No</label>
									<input type="text" name="hodContact" class="form-control" placeholder="Enter Mobile No">
								</div>
								<div class="form-group">
									<label class="form-label">Password</label>
									<input type="password" name="hodPassword" class="form-control" id="Password" placeholder="Enter Password" onkeyup="checkPass(); return false;">
								</div>
								<div class="form-group">
									<label class="form-label">Confirm Password</label>
									<input type="password" name="hodConfirmPassword" class="form-control" id="ConfirmPassword" placeholder="Enter Confirm Password" onkeyup="checkPass(); return false;">
								</div>
								<div class="form-footer">
									<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
									<button type="submit" value="Submit" name="registerHodSubmit" class="btn btn-primary btn-block">Submit</button>
								</div>
							</div>
							<%
			try {
				Connect con = new Connect();
				if (request.getParameter("registerHodSubmit") != null) {
					if (con.CheckData(
							"select * from hod_master where hodEmail='" + request.getParameter("hodEmail") + "'")) {
						out.println("<script>alert('Record already exists......');</script>");
					}
					
					else {
						if (con.Ins_Upd_Del(
								"insert into hod_master(hodName,hodGender,hodContact,hodEmail,hodPassword,hodBranch) VALUES('"
										+ request.getParameter("hodName") + "','" + request.getParameter("hodGender")
										+ "', '" + request.getParameter("hodContact") + "', '"
										+ request.getParameter("hodEmail") + "', '"
										+ request.getParameter("hodPassword") + "', "
										+ request.getParameter("hodBranch") + ");"))
							out.println("<script>alert('Record inserted......');</script>");
						else
							out.println("<script>alert('Record was not inserted......');</script>");
					}
				}
			} catch (Exception e) {
				out.println(e);
			}
		%>
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