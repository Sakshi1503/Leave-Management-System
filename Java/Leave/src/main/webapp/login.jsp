<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("admin")){
		response.sendRedirect("adminHome.jsp");
	}
	else if(userRole.equals("hod")){
		response.sendRedirect("hodHome.jsp");
	}
	else if(userRole.equals("faculty")){
		response.sendRedirect("facultyHome.jsp");
	}
	else if(userRole.equals("warden")){
		response.sendRedirect("wardenHome.jsp");
	}
	else if(userRole.equals("student")){
		response.sendRedirect("studentHome.jsp");
	}
	else{
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.*"%>
<%@page import="Connection.Connect"%>
<title>Index</title>
<jsp:include page="header.jsp" />


<body style="height: -webkit-fill-available;">

	<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
		<h1 class="uk-heading-divider"></h1>
		<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
		<h1 class="uk-heading-divider"></h1>
	</div>
	<div class="page">
		<div class="page-single" style="width: 100%;">
			<div class="container">
				<div class="row">
					<div class="col col-login mx-auto">
						<form class="card" action="" method="post">
							<div class="card-body p-6">
								<div class="card-title">
									<center>Login</center>
								</div>
								<div class="form-group">
									<label class="form-label">You are</label>
									<select class="form-control custom-select" id="roleSelect" name="roleSelect">
										<option value="Admin">Admin</option>
										<option value="HoD">HoD</option>
										<option value="Faculty">Faculty</option>
										<option value="Warden">Warden</option>
										<option value="Student">Student</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email</label>
									<input required = "required" type="email" name="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter Email" required="">
								</div>
								<div class="form-group">
									<label class="form-label">Password</label>
									<input required = "required" type="password" name="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password" required="">
								</div>

								<div class="form-footer">
									<button type="submit" class="btn btn-primary btn-block" id="submitLink"
										value="submit" name="btnLogin" style="color: white;">Sign in</button>
								</div>
							</div>
							<%
							Connect con=new Connect();
							String role = request.getParameter("roleSelect");
									if(request.getParameter("btnLogin")!=null && role.equals("Admin"))
									{
										if(con.CheckData("select * from admin_master where adminEmail='"+request.getParameter("email")+"' and adminPassword='"+request.getParameter("password")+"'"))
										{
											String Uname=request.getParameter("email");
											session.setAttribute("adminUsername" ,Uname);
											session.setAttribute("role" ,"admin");
											response.sendRedirect("adminHome.jsp");
										}
										else
										{	
											out.println("<script>alert('Wrong username or password')</script>");
									
										}
									}
									else if(request.getParameter("btnLogin")!=null && role.equals("HoD"))
									{
										if(con.CheckData("select * from hod_master where hodEmail='"+request.getParameter("email")+"' and hodPassword='"+request.getParameter("password")+"'"))
										{
											String Uname=request.getParameter("email");
											session.setAttribute("hodUsername" ,Uname);
											session.setAttribute("role" ,"hod");
											response.sendRedirect("hodHome.jsp");
										}
										else
										{
											out.println("<script>alert('Wrong username or password')</script>");
											
										}
									}
									else if(request.getParameter("btnLogin")!=null && role.equals("Faculty"))
									{
										if(con.CheckData("select * from faculty_master where facultyEmail='"+request.getParameter("email")+"' and facultyPassword='"+request.getParameter("password")+"'"))
										{
											String Uname=request.getParameter("email");
											session.setAttribute("facultyUsername" ,Uname);
											session.setAttribute("role" ,"faculty");
											response.sendRedirect("facultyHome.jsp");
										}
										else
										{
											out.println("<script>alert('Wrong username or password')</script>");
											
										}
									}
									else if(request.getParameter("btnLogin")!=null && role.equals("Warden"))
									{
										if(con.CheckData("select * from warden_master where wardenEmail='"+request.getParameter("email")+"' and wardenPassword='"+request.getParameter("password")+"'"))
										{
											String Uname=request.getParameter("email");
											session.setAttribute("wardenUsername" ,Uname);
											session.setAttribute("role" ,"warden");
											response.sendRedirect("wardenHome.jsp");
										}
										else
										{
											out.println("<script>alert('Wrong username or password')</script>");
											
										}
									}
									else if(request.getParameter("btnLogin")!=null && role.equals("Student"))
									{
										if(con.CheckData("select * from student_master where studentEmail='"+request.getParameter("email")+"' and studentPassword='"+request.getParameter("password")+"'"))
										{
											String Uname=request.getParameter("email");
											session.setAttribute("studentUsername" ,Uname);
											session.setAttribute("role" ,"student");
											response.sendRedirect("studentHome.jsp");
										}
										else
										{
											out.println("<script>alert('Wrong username or password')</script>");
										
										}
									}
      						 %>
						</form>
						<div class="text-center text-muted">
							Don't have account yet? <a href="./registerUser.jsp">Sign up</a>
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
%>