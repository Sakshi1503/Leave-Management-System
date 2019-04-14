<%@page import="Connection.Connect"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String id = request.getParameter("id");

Connect con = null;
ResultSet rs = null;

rs = con.Ins_Upd_Del("Update leave_record set leaveApproved = 'yes' where recordID = "+id);

%>