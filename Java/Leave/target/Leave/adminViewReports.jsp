<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%
	String userRole = new String("SUPERSTAR");

	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("admin")){
%>
<title>Admin Reports</title>
<jsp:include page="headerAdmin.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<body>

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
                                <a href="./adminHome.jsp" class="nav-link active"><i class="fe fe-home"></i> Home</a>
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
                                <a href="adminApproveLeave.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
                                    Approve Leave</a>
                            </li>
                            <li class="nav-item">
                                <a href="adminAddAdmin.jsp" class="nav-link"><i class="fe fe-plus"></i> Add Admin</a>
                            </li>
                            <li class="nav-item">
                                <a href="adminViewReports.jsp" class="nav-link"><i class="fe fe-file"></i> View Report</a>
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
                <div class="col-sm col-md col-lg ml-4 mt-3" style="margin: 0px; padding: 0px; width: 100%; height: max-content;">
                <!-- <div class="border mt-2 ml-2 shadow-sm p-3 bg-white rounded">Month</div> -->
                <div class="form-group">
                    <label class="form-label"><h4>SELECT ROLE</h4></label>
                    <div class="selectgroup w-100">
                        <label class="selectgroup-item">
                            <input type="radio" id="reportRole" name="reportRole" value="hod" class="selectgroup-input">
                            <span class="selectgroup-button">Head of Department</span>
                        </label>
                        <label class="selectgroup-item">
                            <input type="radio" id="reportRole" name="reportRole" value="faculty" class="selectgroup-input">
                            <span class="selectgroup-button">Faculty</span>
                        </label>
                        <label class="selectgroup-item">
                            <input type="radio" id="reportRole" name="reportRole" value="warden" class="selectgroup-input">
                            <span class="selectgroup-button">Warden</span>
                        </label>
                        <label class="selectgroup-item">
                            <input type="radio" id="reportRole" name="reportRole" value="student" class="selectgroup-input">
                            <span class="selectgroup-button">Student</span>
                        </label>
                    </div>
                </div>
                <table class="table uk-text-center border mt-2 shadow-sm rounded" id="hodTable" style="display: none;">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Role</th>
                            <th scope="col">Name</th>
                            <th scope="col">Contact Number</th>
                             <th scope="col">Number of leaves</th>
                        </tr>
                    </thead>
                    <tbody>
                <%
                    Connect con=null;
					ResultSet rs=null;
					ResultSetMetaData mtdt=null;
			        con=new Connect();
					
                    rs = con.SelectData("select hodID, hodName, hodContact, count(appID) from hod_master left join leave_record on hodID = appID where appRole='hod' and isApprovedHod='yes' group by hodID order by hodID;");
                    if(rs.next()){
                    rs.beforeFirst();
                    while(rs.next()){	
                %>
                    <tr id="hodLeave">
                            <th>HoD</th>
                            <td><%= (String)rs.getString(2)%></td>
                            <td><%= (String)rs.getString(3)%></td>
                            <td><%= rs.getInt(4)%></td>
                        </tr>
                <%
                    }
                    }
                %>
                    </tbody>
                </table>

                <table class="table uk-text-center border mt-2 shadow-sm rounded" id="facultyTable" style="display: none;">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Role</th>
                            <th scope="col">Name</th>
                            <th scope="col">Contact Number</th>
                             <th scope="col">Number of leaves</th>
                        </tr>
                    </thead>
                    <tbody>
                <%
                    rs = con.SelectData("select facultyID, facultyName, facultyContact, count(appID) from faculty_master left join leave_record on facultyID = appID where appRole='faculty' and isApprovedFaculty='yes' group by facultyID order by facultyID;");
                    if(rs.next()){
                    rs.beforeFirst();
                    while(rs.next()){	
                %>
                    <tr id="facultyLeave">
                            <th>Faculty</th>
                            <td><%= (String)rs.getString(2)%></td>
                            <td><%= (String)rs.getString(3)%></td>
                            <td><%= rs.getInt(4)%></td>
                        </tr>
                <%
                    }
                    }
                %>
                    </tbody>
                </table>

                <table class="table uk-text-center border mt-2 shadow-sm rounded" id="wardenTable" style="display: none;">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Role</th>
                            <th scope="col">Name</th>
                            <th scope="col">Contact Number</th>
                             <th scope="col">Number of leaves</th>
                        </tr>
                    </thead>
                    <tbody>
                <%
                    rs = con.SelectData("select wardenID, wardenName, wardenContact, count(appID) from warden_master left join leave_record on wardenID = appID where appRole='warden' and isApprovedWarden='yes' group by wardenID order by wardenID;");
                    if(rs.next()){
                    rs.beforeFirst();
                    while(rs.next()){	
                %>
                    <tr id="wardenLeave">
                            <th>Warden</th>
                            <td><%= (String)rs.getString(2)%></td>
                            <td><%= (String)rs.getString(3)%></td>
                            <td><%= rs.getInt(4)%></td>
                        </tr>
                <%
                    }
                    }
                %>
                    </tbody>
                </table>

                <table class="table uk-text-center border mt-2 shadow-sm rounded" id="studentTable" style="display: none;">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Role</th>
                            <th scope="col">Name</th>
                            <th scope="col">Contact Number</th>
                             <th scope="col">Number of leaves</th>
                        </tr>
                    </thead>
                    <tbody>
                <%
                    rs = con.SelectData("select studentID, studentName, studentContact, count(appID) from student_master left join leave_record on studentID = appID where appRole='student' and isApprovedStudent='yes' group by studentID order by studentID;");
                    if(rs.next()){
                    rs.beforeFirst();
                    while(rs.next()){	
                %>
                    <tr id="studentLeave">
                            <th>Student</th>
                            <td><%= (String)rs.getString(2)%></td>
                            <td><%= (String)rs.getString(3)%></td>
                            <td><%= rs.getInt(4)%></td>
                        </tr>
                <%
                    }
                    }
                %>
                    </tbody>
                </table>
                
                </div>
            </div>

        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
                $('input[type="radio"]').click(function () {
                    if ($(this).attr('id') == 'reportRole' && $(this).attr('value') == 'hod') {
                        $('#hodTable').show();
                        $('#facultyTable').hide();
                        $('#wardenTable').hide();
                        $('#studentTable').hide();
                    }
                    else if ($(this).attr('id') == 'reportRole' && $(this).attr('value') == 'faculty') {
                        $('#hodTable').hide();
                        $('#facultyTable').show();
                        $('#wardenTable').hide();
                        $('#studentTable').hide();
                    }
                    else if ($(this).attr('id') == 'reportRole' && $(this).attr('value') == 'warden') {
                        $('#hodTable').hide();
                        $('#facultyTable').hide();
                        $('#wardenTable').show();
                        $('#studentTable').hide();
                    }
                    else if ($(this).attr('id') == 'reportRole' && $(this).attr('value') == 'student') {
                        $('#hodTable').hide();
                        $('#facultyTable').hide();
                        $('#wardenTable').hide();
                        $('#studentTable').show();
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
<%-- select hodID, hodName, hodContact, count(appID) from hod_master left join leave_record on hodID = appID where appRole='hod' and isApprovedHod='yes' group by hodID; --%>