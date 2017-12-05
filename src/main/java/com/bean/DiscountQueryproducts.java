package com.bean;

import java.util.Date;

public class DiscountQueryproducts extends Products{

	 private Double discountprice;
	 private Date discountstoptime;
	public Double getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(Double discountprice) {
		this.discountprice = discountprice;
	}
	public Date getDiscountstoptime() {
		return discountstoptime;
	}
	public void setDiscountstoptime(Date discountstoptime) {
		this.discountstoptime = discountstoptime;
	}
}
