

<%@page import="connect.DbManager"%>
<%
String name = request.getParameter("name");
String fname = request.getParameter("fname");
String gender = request.getParameter("gender");
String gmail = request.getParameter("gmail"); 
String password = request.getParameter("password");

String query = "INSERT INTO rform  VALUES ('" + name + "','" + fname + "','" + gender + "','" + gmail + "','" + password + "')";
DbManager db = new DbManager();

    if (db.insertUpdateDelete(query)) {
        out.print("<script>alert('Registration is Done');window.location.href='viewuser.jsp'</script>");
    } else {
        out.print("<script>alert('Registration Failed');window.location.href='index.jsp'</script>");
    }

%>

