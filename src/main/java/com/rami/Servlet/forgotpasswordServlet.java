package com.rami.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rami.connection.DbCon;

@WebServlet("/forgotpasswordAction")
public class forgotpasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String newpassword = request.getParameter("newpassword");

		int check = 0;

		try{
			
			Connection con = DbCon.getConnection();
			Statement st = con.createStatement(); 
			ResultSet rs = st.executeQuery("select *from users where email='"+email+"'");
			
			while(rs.next()){
				
				check = 1;
				st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
				response.sendRedirect("forgotpassword.jsp?msg=done");
				
			}
			
			if(check==0){
				
				response.sendRedirect("forgotpassword.jsp?msg=invalid");
				
			}
			
		}catch(Exception e){
			
			System.out.print(e);
			
		}



	}

}
