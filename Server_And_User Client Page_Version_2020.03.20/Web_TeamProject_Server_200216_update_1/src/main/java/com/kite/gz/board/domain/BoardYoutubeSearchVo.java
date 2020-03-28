package com.kite.gz.board.domain;

import java.sql.Date;

//BoardYoutubeSearchVo 도메인 클래스: 유튜브 영상 검색의 결과인 영상 제목을 담는 도메인 클래스
public class BoardYoutubeSearchVo {
	
	private int idx; //동영상 번호
	private String title; //동영상 제목
	private String channelTitle; //채널이름
	private String search; //검색어
	private Date regdate; //검색한 날짜
	
	//<생성자>//
	//기본생성자
	public BoardYoutubeSearchVo() {
		super();
	}

	//전체 필드를 다 받는 생성자
	public BoardYoutubeSearchVo(int idx, String title, String channelTitle, String search, Date regdate) {
		super();
		this.idx = idx;
		this.title = title;
		this.channelTitle = channelTitle;
		this.search = search;
		this.regdate = regdate;
	}
	
	//get와 set 메서드
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getChannelTitle() {
		return channelTitle;
	}

	public void setChannelTitle(String channelTitle) {
		this.channelTitle = channelTitle;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "BoardYoutubeSearchVo [idx=" + idx + ", title=" + title + ", channelTitle=" + channelTitle + ", search="
				+ search + ", regdate=" + regdate + "]";
	}
	



}//BoardYoutubeSearchVo 클래스 끝
