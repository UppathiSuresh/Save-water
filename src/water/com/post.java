package water.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import water.com.model.Posts;

/**
 * Servlet implementation class post
 */
public class post extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public post() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 HttpSession session=request.getSession();  
	    
		 
		String username =(String) session.getAttribute("name");
		
	
		
		
		PrintWriter out = response.getWriter();
		
		if(username==null) {
			
			out.println("<script type=\"text/javascript\">");
            out.println("alert('please login');");
            out.println("location='login.jsp';");
            out.println("</script>"); 
		}
		
		//System.out.println("Username :"+username);
		String user_comment = request.getParameter("comment");
		
		UUID commentId = UUID.randomUUID();
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "suresh");
		
	

		String sql = "insert into post(ID,comments,username)values(?,?,?)";
		
				
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(2,user_comment );
		ps.setString(1, commentId.toString());
		
		ps.setString(3, username);
		
				//System.out.print("username:"+username);
		//ps.setString(2,encryptedPassword);
		//ps.setString(3, uemail);
		
		int i=ps.executeUpdate();
		if(i>0) {
			out.println("<script type=\"text/javascript\">");
            out.println("alert('You are successfully commented...');");
            out.println("location='postcomment.jsp';");
            out.println("</script>"); 
		}
		out.close();
		con.close();
		ps.close();

		
		
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	}

	public static List<Posts> GetAllPosts() {
	 
		List<Posts> posts = new ArrayList<Posts>();
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "suresh");
			String sql = "select comments,username from post";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				String comment = rs.getString("comments");
				String username = rs.getString("username");
				
				Posts p = new Posts(username, comment);
				posts.add(p);
			}
			
		}

		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {

			e.printStackTrace();
		}

		return posts;
	}
}
