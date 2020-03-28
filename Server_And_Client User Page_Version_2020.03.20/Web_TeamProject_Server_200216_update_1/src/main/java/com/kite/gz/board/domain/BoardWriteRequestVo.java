package com.kite.gz.board.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//BoardWriteRequestVo: 게시글을 작성시 요청 데이터를 보관하여 전달하는 도메인 클래스
public class BoardWriteRequestVo {
	
	private int idx;  //게시글 번호
	private String writer;  //게시글 작성자
	private String title;  //게시글 제목
	private String content;  //게시글 내용
	private String gpw;  //게시글 비밀번호
	private MultipartFile photo;  //게시글 사진 데이터
	private Date regdate;  //게시글 작성 날짜
	
	
	//<생성자>//
	//기본 생성자
	public BoardWriteRequestVo() {
		super();
	}

	//전체 필드를 받는 생성자
	public BoardWriteRequestVo(int idx, String writer, String title, String content, String gpw, MultipartFile photo, Date regdate) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.gpw = gpw;
		this.photo = photo;
		this.regdate = regdate;
	}

    //get와 set 메서드
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getGpw() {
		return gpw;
	}

	public void setGpw(String gpw) {
		this.gpw = gpw;
	}


	public MultipartFile getPhoto() {
		return photo;
	}

	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "BoardWriteRequestVo [idx=" + idx + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", gpw=" + gpw + ", photo=" + photo + ", regdate=" + regdate + "]";
	}

	//toBoard 메서드: Board 도메인의 객체를 반환하는 메서드
	public BoardVo toBoard() {
		
		return new BoardVo(0, writer, title, content, gpw, null, photo, null);
	
	}//toBoard 메서드 끝

}//BoardWriteRequestVo 클래스 끝
