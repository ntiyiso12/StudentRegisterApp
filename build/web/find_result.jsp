<%-- 
    Document   : find_result
    Created on : 11 May 2025, 2:23:51 PM
    Author     : ntiyi
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Find Student Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            padding: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Student Search Result</h2>
    
    <% 
        if (request.getAttribute("notFound") != null) {
    %>
    <p class="message">Student not found with the provided student number.</p>
    <% 
        } else {
    %>
    <table>
        <tr>
            <th>Student Number</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Email</th>
            <th>Course</th>
        </tr>
        <tr>
            <td><%= request.getAttribute("studentNumber") %></td>
            <td><%= request.getAttribute("name") %></td>
            <td><%= request.getAttribute("surname") %></td>
            <td><%= request.getAttribute("email") %></td>
            <td><%= request.getAttribute("course") %></td>
        </tr>
    </table>
    <% 
        }
    %>
</body>
</html>

