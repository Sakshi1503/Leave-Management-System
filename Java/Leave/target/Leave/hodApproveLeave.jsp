<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("hod")){
%>
<title>Approve Leave</title>
<jsp:include page="headerHod.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function () {
		$(".approve").click(function () {
			var id2 = this.id;
			$.ajax({
				url: "update-approve-ajax.jsp",
				type: "post",
				data: {
					id: id2,
				},
				success: function (data) {
					location.reload(true);
				}
			});
		});
	});

	$(document).ready(function () {
		$(".reject").click(function () {
			var id3 = this.id;
			$.ajax({
				url: "update-reject-ajax.jsp",
				type: "post",
				data: {
					id: id3,
				},
				success: function (data) {
					location.reload(true);
				}
			});
		});
	});
</script>

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
								<a href="hodApproveLeave.jsp" class="nav-link active"><i class="fe fe-check-circle"></i>
									Approve Leave</a>
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
                    rs = con.SelectData("select * from leave_record,faculty_master where appID = facultyID and appRole='faculty' and appToID = "+ hodID +" and appToRole='hod' and leaveApproved='no' and leaverejected='no';");
                    while(rs.next()){
						rs3 = con.SelectData("select branchName from branch_info where branchCode = " + rs.getInt("facultyBranch") +";");
						String branch = new String();
						if(rs3.next()){
							branch = rs3.getString("branchName");
						}
                    %>
                    <div class="card">
                        <div class="card-body">
                            <table style="width: 80%;">
                                <tr>
                                    <td><b>Faculty Name:</b></td>
                                    <td><%= rs.getString("facultyName")%></td>
                                </tr>
                                <tr>
                                    <td><b>Faculty Department:</b></td>
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
</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>