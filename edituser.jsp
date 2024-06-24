
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="css/bootstrap.css">
            <script src="js/bootstrap.bundle.js"></script>
        <title>Edit User</title>
    </head>
    <body>
        <div style="min-height: 600px;">
            <h2 style="margin: auto;">Edit User Information</h2>
            <%
                String gmail = request.getParameter("gmail");
                DbManager db = new DbManager();
                String query = "SELECT * FROM rform WHERE gmail = '" + gmail + "'";
                ResultSet rs = db.select(query);
                if (rs.next()) {
            %>
            <form action="updateform.jsp" method="post">
                <input type="hidden" name="gmail" value="<%=gmail%>"/>
                <table style="margin: auto;" class="table">
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" value="<%=rs.getString("name")%>"/></td>
                    </tr>
                    <tr>
                        <td>Father Name:</td>
                        <td><input type="text" name="fname" value="<%=rs.getString("fname")%>"/></td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <select name="gender">
                                <option value="Male" <%=rs.getString("gender").equals("Male") ? "selected" : "" %>>Male</option>
                                <option value="Female" <%=rs.getString("gender").equals("Female") ? "selected" : "" %>>Female</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="<%=rs.getString("password")%>"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <button type="submit">Update</button>
                        </td>
                    </tr>
                </table>
            </form>
            <% } %>
        </div>
    </body>
</html>