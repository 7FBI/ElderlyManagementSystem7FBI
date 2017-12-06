package com.bean;

public class Discountproducts extends Discount{
     private String pname;
     private String productscolor;
     private String producturl;
     private Double price;
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getProductscolor() {
		return productscolor;
	}
	public void setProductscolor(String productscolor) {
		this.productscolor = productscolor;
	}
	public String getProducturl() {
		return producturl;
	}
	public void setProducturl(String producturl) {
		this.producturl = producturl;
	}
     
}
