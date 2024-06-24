<%@page import="connect.DbManager"%>
<%
    String gmail = request.getParameter("gmail");
    String name = request.getParameter("name");
    String fname = request.getParameter("fname");
    String gender = request.getParameter("gender");
    String password = request.getParameter("password");

    DbManager db = new DbManager();
    String query = "UPDATE rform SET name = '" + name + "', fname = '" + fname + "', gender = '" + gender + "', password = '" + password + "' WHERE gmail = '" + gmail + "'";
    if (db.insertUpdateDelete(query)) {
        out.print("<script>alert('Updated Successfully');window.location.href='viewuser.jsp';</script>");
    } else {
        out.print("<script>alert('Update Failed');window.location.href='viewuser.jsp';</script>");
    }
%>