/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ntiyi
 */
public class FindStudentServlet extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String studentNumber = request.getParameter("studentNumber");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_register?useSSL=false&serverTimezone=UTC", "root", "bellah");
            String sql = "SELECT * FROM students WHERE student_number = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, studentNumber);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                request.setAttribute("studentNumber", rs.getString("student_number"));
                request.setAttribute("name", rs.getString("first_name"));
                request.setAttribute("surname", rs.getString("last_name"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("course", rs.getString("course"));
            } else {
                request.setAttribute("notFound", true);
            }

            RequestDispatcher rd = request.getRequestDispatcher("find_result.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    
       
    }

   

}
