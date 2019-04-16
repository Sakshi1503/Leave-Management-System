<%
    session.removeAttribute("role");
    session.invalidate();
    response.sendRedirect("login.jsp");

%>