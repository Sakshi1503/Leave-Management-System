<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("faculty")){
%>
<title>Approve Leave</title>
<jsp:include page="headerFaculty.jsp" />
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
                                <a href="./facultyHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="facultyApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i>Apply For
                                    Leave</a>
                            </li>
                            <li class="nav-item">
                                <a href="facultyApproveStudent.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
                                    Approve User</a>
                            </li>
                            <li class="nav-item">
                                <a href="facultyRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
                                    User</a>
                            </li>
                             <li class="nav-item">
                                <a href="facultyApproveLeave.jsp" class="nav-link active"><i class="fe fe-check-circle"></i>
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
                                <a href="facultyEditProfile.jsp" class="nav-link"><i class="fe fe-user"></i> Edit
                                    Profile</a>
                            </li>

                            <li class="nav-item">
                                <a href="facultyChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
                                    Password</a>
                            </li>
                            <li class="nav-item">
                                <a href="logout.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm col-md col-lg" style="margin: 0px; padding: 0px; width: 100%; height: max-content;">

                    <%
                    Connect con=null;
					ResultSet rs=null;
					ResultSetMetaData mtdt=null;
			        con=new Connect();
					int facultyID = 0;
                    ResultSet rs2 = con.SelectData("select facultyID from faculty_master where facultyEmail = '"+ session.getAttribute("facultyUsername") +"';");
                    ResultSet rs3 = null;
                    if(rs2.next()){
                    	facultyID = rs2.getInt("facultyID");
                    }
                    rs = con.SelectData("select * from leave_record,student_master where appID = studentID and appRole='student' and appToID = "+ facultyID +" and appToRole='faculty' and leaveApproved='no' and leaverejected='no';");
                    while(rs.next()){
						rs3 = con.SelectData("select branchName from branch_info where branchCode = " + rs.getInt("studentBranch") +";");
						String branch = new String();
						if(rs3.next()){
							branch = rs3.getString("branchName");
						}
                    %>
                    <div class="card">
                        <div class="card-body">
                            <table style="width: 80%;">
                                <tr>
                                    <td><b>Student Name:</b></td>
                                    <td><%= rs.getString("studentName")%></td>
                                </tr>
                                <tr>
                                    <td><b>Student Department:</b></td>
                                    <td><%= branch%></td>
                                </tr>
                                <tr>
                                    <td><b>Leave From:</b></td>
                                    <td><%= rs.getDate("leaveFrom")%></td>
                                </tr>
                                <tr>
                                    <td><b>Leave To:</b></td>
                                    <td><%= rs.getDate("leaveTo")%></td>
                                </tr>
                                <tr>
                                    <td><b>Leave Reason:</b></td>
                                    <td><%= rs.getString("leaveReason")%></td>
                                </tr>
                            </table>
                            <button class="approve" id="<%= rs.getInt("recordID")%>">Approve</button>
                            <button class="reject" id="<%= rs.getInt("recordID")%>">Reject</button>
                        </div>
                    </div>

                    <%
                    }
                    %>
                </div>
            </div>
        </div>
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