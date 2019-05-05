<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("hod")){
%>
<title>Apply for Leave</title>
<jsp:include page="headerHod.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>

<body style="height: max-content;">
	<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
		<h1 class="uk-heading-divider"></h1>
		<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
		<h1 class="uk-heading-divider"></h1>
	</div>

	<div class="page" style="padding: 0px; margin: 0px; height: max-content; background-color: #edf2fa;">
		<div class="container" style="padding: 0px; margin: 0px; height: auto;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2"
					style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: auto;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./hodHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="hodApplyLeave.jsp" class="nav-link active"><i class="fe fe-plus"></i>Apply For
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
								<a href="hodApproveLeave.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve Leave</a>
							</li>
							<li class="nav-item">
								<a href="hodLeaveRequests.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Your Leaves</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="hodEditProfile.jsp" class="nav-link"><i class="fe fe-user"></i> Edit
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
				<div class="col-sm-8 col-md-9 col-lg-10" style="margin: 0px; padding: 0px; width: 100%;">
					<div class="page">
						<div class="page-single" style="width: 100%;">
							<div class="container" style="height: auto;">
								<div class="row">
									<div class="col col-login mx-auto">
										<form class="card" action="" method="post" name="hodApplyLeave"
											onsubmit="if (date_check()==false) return false; else return true;">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Apply for Leave</center>
												</div>
												<div class="form-group">
													<label class="form-label">Type of Leave</label>
													<select class="form-control custom-select" id="roleSelect"
														name="roleSelect">
														<option value="Casual Leave">Casual Leave</option>
														<option value="Special Casual Leave">Special Casual Leave
														</option>
														<option value="Half Pay Leave">Half Pay Leave</option>
														<option value="Earned Leave">Earned Leave</option>
														<option value="Medical Leave">Medical Leave</option>
													</select>
												</div>
												<div class="form-group">
													<label class="form-label">Reason</label>
													<textarea name="hodReason" class="form-control" id="leaveReason"
														aria-describedby="leaveReason"
														placeholder="Enter reason for leave"></textarea>
												</div>
												<div class="form-group">
													<label class="form-label">Leave Duration</label>
													<div class="col-sm-12" style="padding: 0px;">
														<label class="form-label">From</label>
													</div>

													<div class="col-sm" style="padding: 0px;">
														<div class="row gutters-xs">
															<div class="col-5">
																<select name="leaveFromMonth"
																	class="form-control custom-select">
																	<option value="">Month</option>
																	<option value="1">January</option>
																	<option value="2">February</option>
																	<option value="3">March</option>
																	<option value="4">April</option>
																	<option value="5">May</option>
																	<option selected="selected" value="6">June</option>
																	<option value="7">July</option>
																	<option value="8">August</option>
																	<option value="9">September</option>
																	<option value="10">October</option>
																	<option value="11">November</option>
																	<option value="12">December</option>
																</select>
															</div>
															<div class="col-3">
																<select name="leaveFromDay"
																	class="form-control custom-select">
																	<option value="">Day</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																	<option value="7">7</option>
																	<option value="8">8</option>
																	<option value="9">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																	<option value="13">13</option>
																	<option value="14">14</option>
																	<option value="15">15</option>
																	<option value="16">16</option>
																	<option value="17">17</option>
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option selected="selected" value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																</select>
															</div>
															<div class="col-4">
																<select name="leaveFromYear"
																	class="form-control custom-select">
																	<option value="">Year</option>
																	<option value="2028">2028</option>
																	<option value="2027">2027</option>
																	<option value="2026">2026</option>
																	<option value="2025">2025</option>
																	<option value="2024">2024</option>
																	<option value="2023">2023</option>
																	<option value="2022">2022</option>
																	<option value="2021">2021</option>
																	<option value="2020">2020</option>
																	<option value="2019" selected="selected">2019
																	</option>
																	<option value="2018">2018</option>
																</select>
															</div>
														</div>
													</div>

													<div class="col-sm-12" style="padding: 0px; margin-top: 1rem;">
														<label class="form-label">To</label>
													</div>
													<div class="col-sm" style="padding: 0px;">
														<div class="row gutters-xs">
															<div class="col-5">
																<select name="leaveToMonth"
																	class="form-control custom-select">
																	<option value="">Month</option>
																	<option value="1">January</option>
																	<option value="2">February</option>
																	<option value="3">March</option>
																	<option value="4">April</option>
																	<option value="5">May</option>
																	<option selected="selected" value="6">June</option>
																	<option value="7">July</option>
																	<option value="8">August</option>
																	<option value="9">September</option>
																	<option value="10">October</option>
																	<option value="11">November</option>
																	<option value="12">December</option>
																</select>
															</div>
															<div class="col-3">
																<select name="leaveToDay"
																	class="form-control custom-select">
																	<option value="">Day</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																	<option value="7">7</option>
																	<option value="8">8</option>
																	<option value="9">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																	<option value="13">13</option>
																	<option value="14">14</option>
																	<option value="15">15</option>
																	<option value="16">16</option>
																	<option value="17">17</option>
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option selected="selected" value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																</select>
															</div>
															<div class="col-4">
																<select name="leaveToYear"
																	class="form-control custom-select">
																	<option value="">Year</option>
																	<option value="2028">2028</option>
																	<option value="2027">2027</option>
																	<option value="2026">2026</option>
																	<option value="2025">2025</option>
																	<option value="2024">2024</option>
																	<option value="2023">2023</option>
																	<option value="2022">2022</option>
																	<option value="2021">2021</option>
																	<option value="2020">2020</option>
																	<option value="2019" selected="selected">2019
																	</option>
																	<option value="2018">2018</option>
																</select>
															</div>
														</div>
													</div>
												</div>

												<div class="form-group col-sm" style="padding: 0px;">
													<div class="form-label">Upload Proof Document</div>
													<div class="custom-file">
														<input type="file" class="custom-file-input" name="document"
															pattern="/^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP|.pdf|.PDF)$/">
														<label class="custom-file-label">Choose file</label>
													</div>
												</div>

												<div class="form-group">
													<label class="form-label">Leave Application to:</label>
													<select class="form-control custom-select" id="applyTo"
														name="applyTo">
														<%
														Connect con=null;
														ResultSet rs=null;
														ResultSetMetaData mtdt=null;
														con=new Connect();
														rs=con.SelectData("select adminID,adminName from admin_master");
														mtdt=rs.getMetaData();
														while(rs.next())
														{
															int ID = rs.getInt("adminID");
													%>
														<option value="<%= ID%>"><%= rs.getString("adminName")%>
														</option>
														<%
														}
														con.CloseConnection();
													%>
													</select>
												</div>

												<div class="form-footer">
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit"
														name="hodApplyLeave">Submit</button>
												</div>
												<%
												try {
												String Uname = (String)session.getAttribute("hodUsername");
												
												ResultSet rs2 = con.SelectData("select * from hod_master where hodEmail = '+ Uname +'");
												int appID = 1;
												if(rs2.next()){
													out.println(rs2.getInt("hodID"));
													appID = rs2.getInt("hodID");
												}
											
												if (request.getParameter("hodApplyLeave") != null) {
												if (con.CheckData(
												"select * from leave_record where appID='" + appID + "' and appRole='hod' and leaveApproved='no' and leaveRejected='no'")) {
												out.println("<script>alert('You have already applied for leave');</script>");
												}
												
												else {
												if (con.Ins_Upd_Del("insert into leave_record(appID,appRole,leaveReason,leaveFrom,leaveTo,leaveApproved,apptoID,apptoRole) VALUES("+appID+",'hod','"+request.getParameter("hodReason")+"','"+request.getParameter("leaveFromYear")+"-"+request.getParameter("leaveFromMonth")+"-"+request.getParameter("leaveFromDay")+"','"+request.getParameter("leaveToYear")+"-"+request.getParameter("leaveToMonth")+"-"+request.getParameter("leaveToDay")+"','no',"+request.getParameter("applyTo")+",'admin');"))
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
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function date_check() {
			var leaveFrom_date = document.hodApplyLeave.leaveFromMonth.value + "-" + document.hodApplyLeave.leaveFromDay.value + "-" + document.hodApplyLeave.leaveFromYear.value;
			var d = new Date();
			var today = (d.getMonth() + 1) + "-" + d.getDate() + "-" + d.getFullYear();
			if (new Date(leaveFrom_date) < new Date(today)) {
				window.alert("Enter a valid LeaveFrom Date");
				return false;
			}

			var leaveTo_date = document.hodApplyLeave.leaveToMonth.value + "-" + document.hodApplyLeave.leaveToDay.value + "-" + document.hodApplyLeave.leaveToYear.value;
			var d = new Date();
			var today = (d.getMonth() + 1) + "-" + d.getDate() + "-" + d.getFullYear();
			if (new Date(leaveTo_date) < new Date(leaveFrom_date)) {
				window.alert("LeaveTo date is Invalid.");
				return false;
			}
		}
	</script>
</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>