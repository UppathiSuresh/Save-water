package water.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public update() {
        super();
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	String upname=request.getParameter("ups");
	String upgmail=request.getParameter("upgmail");
	String uplocation=request.getParameter("uplocation");
	
	
	try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "suresh");

	
	}
	catch(Exception e){
		System.out.print(e);
	}
	
	
	
	
	}

}
