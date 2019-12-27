package model;

public class Criteria {
	private int page;
	private int pageNum;
	
	public Criteria() {
		page = 1;
		pageNum = 5;
	}

	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public void setPageNum(int pageNum) {
		if(pageNum <= 0 || pageNum > 100) {
			this.pageNum = 5;
			return;
		}
		this.pageNum = pageNum;
	}

	public int getPage() {
		return page;
	}

	public int getPageNum() {
		return pageNum;
	}
	
	public int getPageStart() {
		return (this.page - 1) * pageNum;
	}
}
