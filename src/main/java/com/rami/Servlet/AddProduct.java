package com.rami.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rami.connection.DbCon;

@WebServlet("/addproduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String category = request.getParameter("category");
		String serie = request.getParameter("serie");
		String description = request.getParameter("descri");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		String sql = "insert into phone(category,serie,description,price,image)values(?,?,?,?,?)";
		
		
		try {
		
		Connection con = DbCon.getConnection();
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, category);
		ps.setString(2, serie);
		ps.setString(3, description);
		ps.setString(4, price);
		ps.setString(5, image);
	    ps.executeUpdate();
	
		
	    response.sendRedirect("AddProduct.jsp?msg=valid");
	    
		}catch(Exception e) {
			e.printStackTrace();
			 response.sendRedirect("AddProduct.jsp?msg=invalid");
		}

	}

}
