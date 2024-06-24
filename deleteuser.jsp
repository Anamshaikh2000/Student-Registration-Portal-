<%-- 
    Document   : delenq
    Created on : 8 Jun, 2024, 4:52:20 PM
    Author     : Sheikh Anam
--%>

<%@page import="connect.DbManager"%>
<%
    
    String gmail = request.getParameter("gmail");
    DbManager db = new DbManager();
    String query = "DELETE FROM rform WHERE gmail = '" + gmail + "'";
        if (db.insertUpdateDelete(query)) {
            out.print("<script>alert('Deleted');window.location.href='viewuser.jsp';</script>");
        } else {
            out.print("<script>alert('Not Deleted');window.location.href='viewuser.jsp';</script>");
        }
    
%>
