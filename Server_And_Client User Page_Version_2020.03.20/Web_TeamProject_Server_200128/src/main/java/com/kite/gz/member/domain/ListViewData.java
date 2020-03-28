package com.kite.gz.member.domain;

import java.util.List;

public class ListViewData {
	
	private List<OpMember> memberList;
	private int totalCount ;
	private int no;
	private int currentPageNumber;
	private int pageTotalCount;

	public List<OpMember> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<OpMember> memberList) {
		this.memberList = memberList;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	
	public void setCurrentPageNumber(int currentPageNumber) {
	this.currentPageNumber = currentPageNumber; }
	

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	@Override
	public String toString() {
		return "ListViewData [memberList=" + memberList + ", totalCount=" + totalCount + ", no=" + no
				+ ", currentPageNumber=" + currentPageNumber + ", pageTotalCount=" + pageTotalCount + "]";
	}

	public ListViewData(List<OpMember> memberList, int totalCount, int no, int currentPageNumber, int pageTotalCount) {
		super();
		this.memberList = memberList;
		this.totalCount = totalCount;
		this.no = no;
		this.currentPageNumber = currentPageNumber;
		this.pageTotalCount = pageTotalCount;
		
		/* makeTotalpageCount(); */
	}

	public ListViewData() {
		super();
	}
	
	/*
	 * private void makeTotalpageCount() {
	 * 
	 * // 페이지 개수 int cnt = 0;
	 * 
	 * // 페이지 개수 = 전체 게시글 개수 / 페이지 1장에 넣을 게시글의 개수 cnt = pageTotalCount / no;
	 * 
	 * totalCount = pageTotalCount % no > 0 ? ++cnt : cnt;
	 * 
	 * }
	 */

}
	
	
	
	
	
	
	
	

