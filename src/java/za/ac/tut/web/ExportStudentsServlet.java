package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExportStudentsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        response.setContentType("text/csv");
        response.setHeader("Content-Disposition", "attachment; filename=students.csv");

       
        try (PrintWriter writer = response.getWriter()) {
            
            writer.println(String.format("%-10s %-20s %-20s %-20s %-30s %-20s",
                "ID", "Student Number", "First Name", "Last Name", "Email", "Course"));

          
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/student_register?useSSL=false&serverTimezone=UTC", 
                    "root", "bellah"
                );

                
                String query = "SELECT * FROM students";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);

               
                while (rs.next()) {
                    writer.printf("%-10d %-40s %-30s %-20s %-50s %-50s%n",
                        rs.getInt("id"),
                        rs.getString("student_number"),
                        rs.getString("first_name"),         
                        rs.getString("last_name"),      
                        rs.getString("email"),
                        rs.getString("course"));
                }

                
                conn.close();

            } catch (Exception e) {
                
                response.getWriter().println("Error exporting students: " + e.getMessage());
            }
        } catch (IOException e) {
           
            throw new ServletException("Error writing the CSV file", e);
        }
    }
}
