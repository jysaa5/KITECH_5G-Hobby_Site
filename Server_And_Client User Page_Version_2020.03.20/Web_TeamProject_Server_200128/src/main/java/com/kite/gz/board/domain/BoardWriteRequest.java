package com.kite.gz.board.domain;

import org.springframework.web.multipart.MultipartFile;

//방명록을 처음 작성시 데이터를 보관하여 전달하는 도메인 클래스
public class BoardWriteRequest {
	
	private int idx;
	private String writer;
	private String title;
	private String content;
	private String gphoto;
	private MultipartFile photo;
	
	public BoardWriteRequest(int idx, String writer, String title, String content, String gphoto, MultipartFile photo) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.gphoto = gphoto;
		this.photo = photo;
	}
	
	
	public BoardWriteRequest() {
		super();
	}

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
	public String getGphoto() {
		return gphoto;
	}
	public void setGphoto(String gphoto) {
		this.gphoto = gphoto;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "BoardWriteRequest [idx=" + idx + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", gphoto=" + gphoto + ", photo=" + photo + "]";
	}
	
	

	
	
	

}
