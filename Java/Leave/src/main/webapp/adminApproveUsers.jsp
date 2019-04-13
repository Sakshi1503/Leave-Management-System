<title>Approve Users</title>
<jsp:include page="headerAdmin.jsp" />

<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>


<body style="height: 100vh;">
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
								<a href="./adminHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveUsers.jsp" class="nav-link active"><i
										class="fe fe-check-circle"></i> Approve User</a>
							</li>
							<li class="nav-item">
								<a href="adminRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
									User</a>
							</li>
							<li class="nav-item">
								<a href="adminAddAdmin.jsp" class="nav-link"><i class="fe fe-plus"></i> Add Admin</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="adminEditProfile.jsp" class="nav-link"><i class="fe fe-user"></i> Edit
									Profile</a>
							</li>

							<li class="nav-item">
								<a href="adminChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
									Password</a>
							</li>
							<li class="nav-item">
								<a href="login.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm col-md col-lg" style="margin-top: 1%; padding-left: 10%; width: 100%;">
					<div class="container">
						<div class="row">
							<div class="col-12">

								<div class="card"
									style="margin: 0.05rem;  padding-top: 0.75rem; height: 75vh; width: 61vw; position: inherit;">
									<div class="table-responsive">
										<table
											class="table table-hover table-outline table-vcenter table-hcenter card-table">
											<thead>
												<tr>
													<th>Role</i></th>
													<th>Name</th>
													<th>Contact</th>
													<th>Email</th>
													<th>Branch</th>
													<th></th>
													<th></th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<%
												 Connect con=null;
												 ResultSet rs=null;
												 ResultSetMetaData mtdt=null;
												 con=new Connect();
												 rs=con.SelectData("select hodName,hodContact,hodEmail,hodBranch from hod_master where isApprovedHod='Yes'");
												 mtdt=rs.getMetaData();
													while(rs.next())
													{
														String hodName=rs.getString("hodName");
														String hodContact=rs.getString("hodContact");
														String hodEmail=rs.getString("hodEmail");
														int hodBranch=rs.getInt("hodBranch");
												%>
												<tr>
													<td>HoD</td>
													<td><%out.println(hodName);%></td>
													<td><%out.println(hodContact);%></td>
													<td><%out.println(hodEmail);%></td>
													<td><%out.println(hodBranch);%></td>
												</tr>
												<%
													}
												 rs=con.SelectData("select facultyName,facultyContact,facultyEmail,facultyBranch from faculty_master where isApprovedFaculty='Yes'");
												 mtdt=rs.getMetaData();
													while(rs.next())
													{
														String facultyName=rs.getString("facultyName");
														String facultyContact=rs.getString("facultyContact");
														String facultyEmail=rs.getString("facultyEmail");
														int facultyBranch=rs.getInt("facultyBranch");
												%>
												<tr>
													<td>Faculty</td>
													<td><%out.println(facultyName);%></td>
													<td><%out.println(facultyContact);%></td>
													<td><%out.println(facultyEmail);%></td>
													<td><%out.println(facultyBranch);%></td>
												</tr>
													<%
														}
														rs=con.SelectData("select wardenName,wardenContact,wardenEmail from warden_master where isApprovedWarden='Yes'");
														mtdt=rs.getMetaData();
														while(rs.next())
														{
															String wardenName=rs.getString("wardenName");
															String wardenContact=rs.getString("wardenContact");
															String wardenEmail=rs.getString("wardenEmail");
															String wardenBranch="-";
													%>
													<tr>
														<td>Warden</td>
														<td><%out.println(wardenName);%></td>
														<td><%out.println(wardenContact);%></td>
														<td><%out.println(wardenEmail);%></td>
														<td><%out.println(wardenBranch);%></td>
													</tr>
												<%
													}
													rs=con.SelectData("select studentName,studentContact,studentEmail,studentBranch from student_master where isApprovedStudent='Yes'");
													mtdt=rs.getMetaData();
													while(rs.next())
													{
														String studentName=rs.getString("studentName");
														String studentContact=rs.getString("studentContact");
														String studentEmail=rs.getString("studentEmail");
														int studentBranch=rs.getInt("studentBranch");
												%>
												<tr>
													<td>Student</td>
													<td><%out.println(studentName);%></td>
													<td><%out.println(studentContact);%></td>
													<td><%out.println(studentEmail);%></td>
													<td><%out.println(studentBranch);%></td>
												</tr>
												<%
													}
													con.CloseConnection();
												%>
												<tr>
													<td>HoD</td>
													<td>Prof. A. A. Patel</td>
													<td>8888888888</td>
													<td>aapatel@email.com</td>
													<td>Information Technology</td>
													<td style="padding: 0px; margin: 1px;">
														<ul class="uk-iconnav">
															<li>
																<div uk-lightbox>
																	<a href="viewButtonAdmin.jsp"
																		uk-icon="icon: push"></a>
																</div>
															</li>
														</ul>
													</td>
													<td style="padding: 0px;">
														<ul class="uk-iconnav">
															<li><a href="#" uk-icon="icon: check"></a></li>
														</ul>
													</td>
													<td style="padding: 0px;">
														<ul class="uk-iconnav">
															<li><a href="#" uk-icon="icon: close"></a></li>
														</ul>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
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