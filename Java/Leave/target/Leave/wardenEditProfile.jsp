<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("warden")){
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.Connect"%>
<title>Edit Profile</title>
<jsp:include page="headerWarden.jsp" />


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
                <div class="col-sm-4 col-md-3 col-lg-2" style="padding: 10px; margin-top: 0px; background-color: #b3d9ff;">
                    <div class="col-lg order-lg-first">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                  ઇ              <a href="./wardenHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i> Apply for
                                    Leave</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenApproveStudent.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
                                    Approve Student</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenRemoveStudent.jsp" class="nav-link"><i uk-icon="icon: close"></i>
                                    Remove Student</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenApproveLeave.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
                                    Approve Leave</a>
                            </li>
                            <li class="nav-item">
                                <a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenEditProfile.jsp" class="nav-link active"><i class="fe fe-user"></i>
                                    Edit Profile</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
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
                            <div class="container">
                                <div class="row">
                                    <div class="col col-login mx-auto">
                                        <form class="card" action="" method="post">
                                            <div class="card-body p-6">
                                                <div class="card-title">
                                                    <center>Edit Profile</center>
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">You are</label>
                                                    <select class="form-control custom-select">
                                                        <option value="warden" selected="">Warden</option>
                                                    </select>
                                                </div>
                                                	<%
													Connect con=new Connect();
													String wardenUsername=(String)session.getAttribute("wardenUsername");
													ResultSet rs=con.SelectData("select * from warden_master where wardenEmail='"+wardenUsername+"'");
													if(rs.next()){
												%>
                                                <div class="form-group">
                                                    <label class="form-label">Name</label>
                                                    <input type="username" class="form-control" id="exampleInputname" value="<%=rs.getString("wardenName")%>"
                                                        aria-describedby="nameHelp" pattern="[a-zA-Z][a-zA-Z\s]*" placeholder="Enter Name">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Contact No</label>
                                                    <input type="mobileno" class="form-control" id="exampleInputMobile" value="<%=rs.getString("wardenContact")%>"
                                                        aria-describedby="MobileNo" pattern="[0-9]{10}" placeholder="Mobile No">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Email ID</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail1" value="<%=rs.getString("wardenEmail")%>"
                                                        aria-describedby="emailHelp" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Enter Email">
                                                </div>
                                                                                      
                                                <div class="form-footer">
                                                    <button type="submit" class="btn btn-primary btn-block" id="submitLink"
                                                        value="submit" name="wardenEditProfile" formaction="index.jsp">Submit</button>
                                                </div>
                                            </div>
                                           	<%
														if(request.getParameter("wardenEditProfile")!=null)
													{
														int wardenID=rs.getInt("wardenID");
														if(con.Ins_Upd_Del("update warden_master set wardenName='"+request.getParameter("username")+"',wardenEmail='"+request.getParameter("email")+"',wardenContact='"+request.getParameter("contactNo")+"' where wardenID="+wardenID+""))
														{
														out.println("<script>alert('Record Updated Successfully.')</script>");
														}
														else{
														out.println("<script>alert('There was a problem in updating your Information.')</script>");
														}
													}
												}
											%>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $('input[type="radio"]').click(function () {
                                if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'yes') {
                                    $('#hostel').show();
                                }
                                else if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'no') {
                                    $('#hostel').hide();
                                }
                                else { }
                            });
                        });
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