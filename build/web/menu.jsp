<%-- 
    Document   : menu
    Created on : 11 May 2025, 1:37:12 PM
    Author     : ntiyi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            text-align: center;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            display: block;
            margin: 10px auto;
            width: 80%;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Register Menu</h2>
        <a href="add.jsp" class="btn">Add Student</a>
        <a href="ViewStudentsServlet.do" class="btn">View All Students</a>
        <a href="find.jsp" class="btn">Find Student</a>
    </div>
</body>
</html>

