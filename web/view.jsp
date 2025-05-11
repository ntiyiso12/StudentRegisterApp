<%-- 
    Document   : view
    Created on : 11 May 2025, 1:39:19 PM
    Author     : ntiyi
--%>

<%-- 
    Document   : view
    Created on : 11 May 2025, 1:39:19 PM
    Author     : ntiyi
--%>

<%@page import="za.ac.tut.web.model.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff;
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
        .export-btn {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .export-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h2>All Registered Students</h2>

    <!-- Export to CSV Button -->
    <form action="ExportStudentsServlet.do" method="get">
        <button class="export-btn" type="submit">Export to CSV</button>
    </form>

    <table>
        <tr>
            <th>ID</th>
            <th>Student Number</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Email</th>
            <th>Course</th>
        </tr>
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");
            if (students != null) {
                for (Student s : students) {
        %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getStudentNumber() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getSurname() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getCourse() %></td>
        </tr>
        <% 
                }
            }
        %>
    </table>
</body>
</html>
