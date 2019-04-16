<%@page import="Connection.Connect"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String id = request.getParameter("id");

Connect con = new Connect();
boolean status = con.Ins_Upd_Del("update leave_record set leaveApproved = 'yes' where recordID = "+id);

%>