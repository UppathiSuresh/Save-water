package water.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import swal from 'sweetalert';


/**
 * Servlet implementation class registration
 */
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	
	
		try {
			String username = request.getParameter("username");
			String passname = request.getParameter("password");
			String uemail= request.getParameter("email");
			String ulocation=request.getParameter("location");
			
			
			
			sha256 enc = new sha256();
			PrintWriter out = response.getWriter();
			//out.println(enc.getEncryptedValue(passname));	 
			String encryptedPassword= enc.getEncryptedValue(passname);
			String sql = "insert into water(username,password,email,location)values(?,?,?,?)";
			//insert into water(username,password,email,location)values('s','s','s','s');
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "suresh");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			//ps.setString(2, passname);
			ps.setString(2,encryptedPassword);
			ps.setString(3, uemail);
			ps.setString(4, ulocation);
			//ps.executeUpdate();
			
			//int i= ps.executeQuery();
			int i=ps.executeUpdate();
			if(i>0)
			{
				
				
				out.println("<script type=\"text/javascript\">");
                out.println("alert('You are successfully registered...');");
                out.println("location='home.jsp';");
                out.println("</script>"); 
				//out.print("You are successfully registered.click ok go to login");
			}
			
			 
			
			
			
			out.close();
			con.close();
			ps.close();

		} catch (ClassNotFoundException e) {

			e.printStackTrace();

		} catch (Exception e) {

			e.printStackTrace();
		}
	
	
	
	
	}

}
