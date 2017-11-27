package com.bean;

import java.util.Date;

public class Discouothers {
   private Double discountprice;    /*打折价*/
   private Date discountstoptime;  /*打折截止时间*/
   
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
