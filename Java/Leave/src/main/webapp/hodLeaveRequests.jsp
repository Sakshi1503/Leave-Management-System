<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("hod")){
%>
<title>Leave Requests</title>
<jsp:include page="headerHod.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>


<body style="height: 91vh;">
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
								<a href="./hodHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="hodApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i>Apply For
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
								<a href="hodLeaveRequests.jsp" class="nav-link active"><i class="fe fe-check-circle"></i>
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
				<div class="col-sm col-md col-lg" style="margin: 0px; padding: 0px; width: 100%; height: max-content;">
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
													<th style="width: 40%;">Reason</th>
													<th>From</th>
													<th>To</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
                                            <%
                                            Connect con=null;
                                            ResultSet rs=null;
                                            ResultSetMetaData mtdt=null;
                                            con=new Connect();
                                            int hodID = 0;
                                            ResultSet rs2 = con.SelectData("select hodID from hod_master where hodEmail = '"+ session.getAttribute("hodUsername") +"';");
                                            ResultSet rs3 = null;
                                            if(rs2.next()){
                                                hodID = rs2.getInt("hodID");
                                            }
                                            rs = con.SelectData("select * from leave_record where appID = "+ hodID +" and appRole='hod';");

                                            while(rs.next()){
                                            
                                            %>
                                            <tr>
                                                <td><%= rs.getString("leaveReason")%></td>
                                                <td><%= rs.getDate("leaveFrom")%></td>
                                                <td><%= rs.getDate("leaveTo")%></td>
                                                <%
                                                String lA = rs.getString("leaveApproved");
                                                String lR = rs.getString("leaveRejected");
                                                if(lA.equals("no") && lR.equals("no")){
                                                %>
                                                <td>Pending</td>
                                                <%    
                                                }
                                                else if(lA.equals("yes") && lR.equals("no")){
                                                %>
                                                <td>Approved</td>
                                                <%    
                                                }
                                                else if(lA.equals("no") && lR.equals("yes")){
                                                %>
                                                <td>Rejected</td>
                                                <%    
                                                }
                                                else{
                                                %>
                                                <td>Status Unavailable</td>
                                                <%  
                                                }
                                                %>
                                            </tr>

                                            <%

                                            }

                                            %>
                                            </tbody>
										</table>
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
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>