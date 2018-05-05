
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
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

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
                String _username = result.getString("username");
                String _password = result.getString("password");
                
                

                if (username.equals(_username) && password.equals(_password)) {
                    
                    HttpSession session=request.getSession();
                    session.setAttribute("username", _username);
                    
                    response.sendRedirect("Dashboard.jsp");
                } else {
                    response.sendRedirect("Login.jsp");
                }
            } else {
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
