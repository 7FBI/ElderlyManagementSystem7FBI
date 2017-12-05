package com.bean;

import java.util.Date;

public class GroupBackstage extends Products {
    private Double groupprice;
    private int grouppeople;
    private Date groupstoptime;
	public Double getGroupprice() {
		return groupprice;
	}
	public void setGroupprice(Double groupprice) {
		this.groupprice = groupprice;
	}
	public int getGrouppeople() {
		return grouppeople;
	}
	public void setGrouppeople(int grouppeople) {
		this.grouppeople = grouppeople;
	}
	public Date getGroupstoptime() {
		return groupstoptime;
	}
	public void setGroupstoptime(Date groupstoptime) {
		this.groupstoptime = groupstoptime;
	}
    
}
