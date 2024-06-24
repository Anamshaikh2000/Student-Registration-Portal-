<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View All Registrations</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 50px;
        }
        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 900px;
            margin: auto;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff; 
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: #ffffff;
        }
        .btn {
            padding: 6px 12px;
            font-size: 14px;
            margin-right: 5px;
        }
        .btn-danger {
            background-color: #dc3545; 
            border-color: #dc3545;
        }
        .btn-info {
            background-color: #17a2b8; 
            border-color: #17a2b8;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>View All Registrations</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Father Name</th>
                    <th>Gender</th>
                    <th>Gmail</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    DbManager db = new DbManager();
                    String query = "SELECT * FROM rform";
                    ResultSet rs = db.select(query);
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("gender")%></td>
                    <td><%=rs.getString("gmail")%></td>
                    <td><%=rs.getString("password")%></td>
                    <td>
                        <a href="edituser.jsp?gmail=<%=rs.getString("gmail")%>" class="btn btn-info">Edit</a>
                        <a href="deleteuser.jsp?gmail=<%=rs.getString("gmail")%>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
