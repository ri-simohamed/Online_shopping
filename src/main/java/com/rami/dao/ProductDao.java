package com.rami.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.rami.model.Cart;
import com.rami.model.Product;

public class ProductDao {

	private Connection con;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;

	public ProductDao(Connection con) {

		this.con = con;
	}

	public List<Product> getAllProducts() {
		List<Product> products = new ArrayList<Product>();

		try {

			query = "select * from phone";
			ps = this.con.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {

				Product row = new Product();
//				row.setId(rs.getInt("id"));
				row.setCategory(rs.getString("category"));
				row.setSerie(rs.getString("serie"));
				row.setDescription(rs.getString("description"));
				row.setPrice(rs.getDouble("price"));
				row.setImage(rs.getString("image"));

				products.add(row);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return products;
	}

	public List<Cart> getCartProducts(ArrayList<Cart> cartList) {

		List<Cart> products = new ArrayList<>();

		try {

			if (cartList.size() > 0) {

				for (Cart item : cartList) {

					query = "select * from phone where category=?";

					ps = this.con.prepareStatement(query);
					ps.setString(1, item.getCategory());

					rs = ps.executeQuery();

					while (rs.next()) {

						Cart row = new Cart();

//						row.setId(rs.getInt("id"));
						row.setCategory(rs.getString("category"));
						row.setSerie(rs.getString("serie"));
						row.setPrice(rs.getDouble("price")*item.getQuantity());
						row.setDescription(rs.getString("description"));
						row.setQuantity(item.getQuantity());
						products.add(row);

					}

				}

			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return products;
	}
	
	public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        try {
        	
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "select price from phone where category=?";
                    ps = this.con.prepareStatement(query);
                    ps.setString(1, item.getCategory());
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        sum+=rs.getDouble("price")*item.getQuantity();
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }

}
