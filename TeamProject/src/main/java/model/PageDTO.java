package model;

public class PageDTO {
	private int page; //현재 페이지번호
	private int pageNum; //페이지당 보여질 갯수
	
	//현재 페이지의 시작 번호 = (현재 페이지 - 1) * 페이지갯수
	public int getPageStart() {
		return (this.page-1) * pageNum;
	}
	//생성자
	public PageDTO() {
		this.page = 1;
		this.pageNum = 10;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
		}
		this.page = page;
	}
	public int getPageNum() {
		return pageNum;
	}
	//페이지당 보여줄 갯수 초기화
	public void setPageNum(int pageCount) {
		int cnt = this.pageNum;
		if(pageCount != cnt) {
			this.pageNum = cnt;
		}
		this.pageNum = pageCount;
	}
	
}
