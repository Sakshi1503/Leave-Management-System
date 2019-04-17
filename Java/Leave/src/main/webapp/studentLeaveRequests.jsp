<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("student")){
%>
<title>Leave Requests</title>
<jsp:include page="headerStudent.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>

<body style="height: -webkit-fill-available;">

    <a href="login.jsp">
        <div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
            <h1 class="uk-heading-divider"></h1>
            <h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
            <h1 class="uk-heading-divider"></h1>
        </div>
    </a>
    <div class="uk-modal-container" style="padding: 0px; margin: 0px; background-color: #edf2fa;">
        <div class="container" style="height: 100%; width: 100%; padding: 0px; margin: 0px;">
            <div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
                <div class="col-sm-4 col-md-3 col-lg-2"
                    style="padding: 10px; margin-top: 0px; background-color: #b3d9ff;">
                    <div class="col-lg order-lg-first">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a href="./studentHome.jsp" class="nav-link"><i class="fe fe-home"></i> Apply for
                                    Leave</a>
                            </li>
                            <li class="nav-item">
                                <a href="studentLeaveRequests.jsp" class="nav-link active"><i class="fe fe-check-circle"></i> Your Leaves</a>
                            </li>
                            <li class="nav-item">
                                <a href="studentEditProfile.jsp" class="nav-link"><i class="fe fe-plus"></i> Edit
                                    Profile</a>
                            </li>
                            <li class="nav-item">
                                <a href="studentChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
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
                                            int studentID = 0;
                                            ResultSet rs2 = con.SelectData("select studentID from student_master where studentEmail = '"+ session.getAttribute("studentUsername") +"';");
                                            ResultSet rs3 = null;
                                            if(rs2.next()){
                                                studentID = rs2.getInt("studentID");
                                            }
                                            rs = con.SelectData("select * from leave_record where appID = "+ studentID +" and appRole='student';");

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
                                                <tr>Pending</tr>
                                                <%    
                                                }
                                                else if(lA.equals("yes") && lR.equals("no")){
                                                %>
                                                <tr>Approved</tr>
                                                <%    
                                                }
                                                else if(lA.equals("no") && lR.equals("yes")){
                                                %>
                                                <tr>Rejected</tr>
                                                <%    
                                                }
                                                else{
                                                %>
                                                <tr>Status Unavailable</tr>
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