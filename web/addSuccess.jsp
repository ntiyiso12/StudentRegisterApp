<%-- 
    Document   : addSuccess
    Created on : 11 May 2025, 1:49:44 PM
    Author     : ntiyi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e3f2fd;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            color: #0d47a1;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            background-color: #1976d2;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
        }
        a:hover {
            background-color: #0d47a1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student successfully added!</h2>
        <a href="menu.jsp">Back to Menu</a>
    </div>
</body>
</html>

