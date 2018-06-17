package water.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public update() {
        super();
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    
	String uppassword=request.getParameter("uppass");
	String upgmail=request.getParameter("upgmail");
	String uplocation=request.getParameter("uplocation");
	String upusername=request.getParameter("upname");
	
	PrintWriter out = response.getWriter();
	try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "suresh");

	 
	//String sql="selsect water set(password,gmail,location)=(?,?,?)  where username=? ";
String sql="select water set pasowrd='" +uppassword+"',gmail=' " +upgmail+"',location=' " +uplocation+"' where username='  "+upusername+"'";	
	PreparedStatement ps=con.prepareStatement(sql);
	int result=ps.executeUpdate(sql);
	out.println(result);
		
		ResultSet rs=null; 
//		= ps.executeQuery();		
			//out.println(upname);
			//System.out.println("upusername:"+upname);
		//	out.println(s);
		
		rs.getString(uppassword);
		rs.getString(upgmail);
		rs.getString(uplocation);
		
//		HttpSession session=request.getSession();
//		
//		
//			String s = (String) session.getAttribute("name");
//			out.print("updated username="+s);
//			
//		//	ResultSet rs = ps.executeQuery();
//			
//			while (rs.next()) 
//			{
//				//dbpass = rs.getString("password").trim();
//				//System.out.println("test:"+dbpass);
//		}
//	
	
	
	}

	catch(Exception e){
		System.out.print(e);
	}
	
}
}

