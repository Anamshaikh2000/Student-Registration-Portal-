<%-- 
    Document   : index.jsp
    Created on : 22 Jun, 2024, 10:50:14 PM
    Author     : Anam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.bundle.min.js"></script>
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
            max-width: 600px;
            margin: auto;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff; 
        }
        .form-control {
            border-color: #007bff; 
        }
        .form-control:focus {
            border-color: #007bff; 
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }
        .btn-success {
            background-color: #28a745; 
            border-color: #28a745;
        }
        .btn-success:hover {
            background-color: #218838; 
            border-color: #1e7e34;
        }
        
        .form-check-input:checked {
            background-color: #007bff;
            border-color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>Registration Form</h1>
                <form action="registrationcode.jsp" method="post" class="form-group">
                    <table class="table">
                        <tr>
                            <td>Name</td>
                            <td><input class="form-control" name="name" placeholder="Enter Your Name" id="name" required/></td>
                        </tr>
                        <tr>
                            <td>Father Name</td>
                            <td><input class="form-control" name="fname" placeholder="Enter Your Father Name" id="fname" required/></td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="female" value="female" required>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Gmail</td>
                            <td><input type="email" class="form-control" name="gmail" placeholder="Enter Your Gmail" id="mail" required/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input class="form-control" name="password" type="password" placeholder="Enter Your Password" id="password" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button type="submit" class="btn btn-success">Submit</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
