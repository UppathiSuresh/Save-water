package water.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// doGet(request, response);

		try {

			String user = request.getParameter("username");
			String pass = request.getParameter("password");
			String dbname = null;
			String dbpass = null;
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "suresh");
//			String sql = "select * from water where username = ? and password = ?";
			String sql = "select password from water where username= ?";
			PreparedStatement ps = con.prepareStatement(sql);
			PrintWriter out = response.getWriter();
			ps.setString(1, user);
			ResultSet rs = ps.executeQuery();
			
			
			//out.print(rs.getString("username"));
			
			while (rs.next()) {
				dbpass = rs.getString("password").trim();
				//System.out.println("test:"+dbpass);
			}
			sha256 enc = new sha256();
			String encryptedPassword= enc.getEncryptedValue(pass);
//			System.out.println("input username:"+user);
//			System.out.println("imput password:"+pass);
//			System.out.println("encry password:"+encryptedPassword);
//			System.out.println("db passowrd:"+dbpass);
//			System.out.println("condtion"+encryptedPassword.equals(dbpass));

			if (encryptedPassword.equals(dbpass)) {
				
				 HttpSession session=request.getSession();  
			        
				 session.setAttribute("name",user);  
			        
//				System.out.print(session.setAttribute("name",user););
//				out.println(session.setAttribute("name",user));
				
				 out.println("<script type=\"text/javascript\">");
				 out.println("alert('login succefully');");
				 out.println("location='home.jsp';");
				 out.println("</script>");

//				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//				rd.include(request, response);

			} 
			else {

				 out.println("<script type=\"text/javascript\">");
				 out.println("alert('Invalid Data');");
				 out.println("location='login.jsp';");
				 out.println("</script>");
				 
	//out.print("<script src='C:\\Users\\DELL\\Documents\\sample\\sweetalert.min.js'></script>");

//out.print("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>);
	//out.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	//out.print("<script>");
	//out.print("$(document).ready(function(){");

	//out.print("swal ( 'Oops' ,  'Something went wrong!' ,  'error' )");
	//out.print("});");
	//out.print("</script>");

				 
				 
				 

//				out.println("log in fail !!! please  enter the correct username and password");
				//RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				//rd.include(request, response);
				rs.close();
				out.close();
				con.close();

			}

		}

		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
