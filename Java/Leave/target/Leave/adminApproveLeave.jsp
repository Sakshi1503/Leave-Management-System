<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("admin")){
%>
<title>Approve Leave</title>
<jsp:include page="headerAdmin.jsp" />

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
								<a href="./adminHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveUsers.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve User</a>
							</li>
							<li class="nav-item">
								<a href="adminRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
									User</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveLeave.jsp" class="nav-link active"><i class="fe fe-check-circle"></i>
									Approve Leave</a>
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
								<a href="logout.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm col-md col-lg" style="margin-top: 1%; padding-left: 10%; width: 100%;">

					<%
                    Connect con=null;
					ResultSet rs=null;
					ResultSetMetaData mtdt=null;
			        con=new Connect();
					int adminID = 0;
                    ResultSet rs2 = con.SelectData("select adminID from admin_master where adminEmail = '"+ session.getAttribute("adminUsername") +"';");
                    ResultSet rs3 = null;
                    if(rs2.next()){
                    	adminID = rs2.getInt("adminID");
                    }
                    rs = con.SelectData("select * from leave_record,hod_master where appID = hodID and appRole='hod' and appToID = "+ adminID +" and appToRole='admin' and leaveApproved='no' and leaveRejected='no';");
                    while(rs.next()){
						rs3 = con.SelectData("select branchName from branch_info where branchCode = " + rs.getInt("hodBranch") +";");
						String branch = new String();
						if(rs3.next()){
							branch = rs3.getString("branchName");
						}
                    %>
					<div class="card">
						<div class="card-body">
							<table style="width: 80%;">
								<tr>
									<td><b>HoD Name:</b></td>
									<td><%= rs.getString("hodName")%></td>
								</tr>
								<tr>
									<td><b>HoD Department:</b></td>
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

	</script>

	</html>
	<%
	}
	else{
		response.sendRedirect("login.jsp");
	}
%>