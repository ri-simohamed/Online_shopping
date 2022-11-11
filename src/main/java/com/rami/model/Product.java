package com.rami.model;

public class Product {
	
	private int id;
	private String category;
	private String serie;
	private Double price;
	private String description;
	private String image;
	
	public Product() {
		
		
		
	}
	
	public Product(int id, String category, String serie, Double price,String description, String image) {
		
		this.id = id;
		this.category = category;
		this.serie = serie;
		this.price = price;
		this.description = description;
		this.image = image;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSerie() {
		return serie;
	}

	public void setSerie(String serie) {
		this.serie = serie;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", category=" + category + ", serie=" + serie + ", price=" + price
				+ ", description=" + description + ", image=" + image + "]";
	}

	

}
