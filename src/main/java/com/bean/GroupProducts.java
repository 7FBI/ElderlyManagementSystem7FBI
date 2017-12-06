package com.bean;

public class GroupProducts {
  
	private Products products;
	
	private Groupbuying groupbuying;
	
	private int totalpeople;

	public int getTotalpeople() {
		return totalpeople;
	}
	public void setTotalpeople(int totalpeople) {
		this.totalpeople = totalpeople;
	}
	public Products getProducts() {
		return products;
	}
	public void setProducts(Products products) {
		this.products = products;
	}

	public Groupbuying getGroupbuying() {
		return groupbuying;
	}

	public void setGroupbuying(Groupbuying groupbuying) {
		this.groupbuying = groupbuying;
	}
}
