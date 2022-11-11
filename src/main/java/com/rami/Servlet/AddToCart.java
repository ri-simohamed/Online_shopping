package com.rami.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rami.model.Cart;

@WebServlet("/add-to-cart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		try (PrintWriter out = response.getWriter()) {

			ArrayList<Cart> cartList = new ArrayList<>();

			String category = request.getParameter("category");

			Cart cm = new Cart();
			cm.setCategory(category);
//			cm.(category);

			HttpSession session = request.getSession();

			ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

			if (cart_list == null) {

				cartList.add(cm);

				session.setAttribute("cart-list", cartList);
				response.sendRedirect("product.jsp");

			} else {

				cartList = cart_list;

				boolean exist = false;

				for (Cart c : cartList) {

					if (c.getCategory() == category) {

						exist = true;

						out.println(
								"<h3 style='color:crimson; text-align:center;'>Item already exist in Cart.<a href='cart.jsp'>Go To Cart Page</a></h3>");

					}

				}
				
				if (!exist) {

					cartList.add(cm);
					response.sendRedirect("product.jsp");
				}

			}

		}
	}
}
