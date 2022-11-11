package com.rami.Servlet;

import java.io.IOException;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rami.connection.DbCon;


@WebServlet("/loginAction")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
			
			int z =0;
			
			try{
				
			String query = "select * from users where email=? and password=?";
			Connection con = DbCon.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
			
				z = 1;
				session.setAttribute("eamil", email);
				response.sendRedirect("adminHeader.jsp");
			}
			
			if(z==0){
				
				response.sendRedirect("login.jsp?msg=invalid");
				
			}
				
		}catch(Exception e){
		
		System.out.print(e);
		
		}
	}
	}
