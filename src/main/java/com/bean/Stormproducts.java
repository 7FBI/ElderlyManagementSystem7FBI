package com.bean;

public class Stormproducts extends Products {
	
    private Integer cartcount;  //商品数量
     
    private Integer user_id;   //用户id

	public Integer getCartcount() {
		return cartcount;
	}

	public void setCartcount(Integer cartcount) {
		this.cartcount = cartcount;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

}
