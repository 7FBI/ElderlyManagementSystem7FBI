package com.bean;

public class Page {
   
	private Integer startRow=0;    //开始条数
	
	private Integer pageSize;   //显示条数
	
	private Integer CurrentPage=0;   //当前页面
	
	private Integer TotalPage;   //总页数
	private long TotalRows;    //总的条数
	private String queryCondition;  //模糊查询描述字段

	public String getQueryCondition() {
		return queryCondition;
	}

	public void setQueryCondition(String queryCondition) {
		this.queryCondition = queryCondition;
	}

	public long getTotalRows() {
		return  TotalRows;
	}

	public void setTotalRows(long totalCounts) {
		TotalRows =totalCounts;
	}

	public Integer getTotalPage() {
		return TotalPage;
	}

	public void setTotalPage(Integer totalPage) {
		TotalPage = totalPage;
	}

	public Integer getCurrentPage() {
		return CurrentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		CurrentPage = currentPage;
	}

	public Integer getStartRow() {
		return startRow;
	}

	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
}
