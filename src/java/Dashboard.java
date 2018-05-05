/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Dashboard extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            out.println("1");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/Vehicle", "root", "");
//            PreparedStatement ps=con.prepareStatement("insert into login values(?,?)");
            PreparedStatement ps = con.prepareStatement("select * from login where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet result = ps.executeQuery();

            //int i=ps.executeUpdate();
            if (result.next()) {
//                out.println("2");
                out.println("Ela");
                response.sendRedirect("Dashboard.jsp");                             
            }else{
                out.println("3");
                out.println("Aiyo");
                response.sendRedirect("Login.jsp");
            }
        } catch (Exception e) {
            out.println("4");
            out.println(e.getMessage());
            out.close();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
