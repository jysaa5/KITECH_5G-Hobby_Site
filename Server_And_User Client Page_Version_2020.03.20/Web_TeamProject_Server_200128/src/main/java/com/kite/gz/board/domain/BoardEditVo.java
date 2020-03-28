package com.kite.gz.board.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//BoardEditVo: 회원의 방명록을 수정했을 때의 각각의 정보를 담는 도메인 클래스 
public class BoardEditVo {
	
	private int idx;
	private String writer;
	private String title;
	private String content;
	private MultipartFile gphoto;
	private Date regdate;
	
	
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
	public Date getRegdate() {
		return regdate;
	}
	
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	
	public MultipartFile getGphoto() {
		return gphoto;
	}
	public void setGphoto(MultipartFile gphoto) {
		this.gphoto = gphoto;
	}
	//작성된 날짜를 숫자를 객체에 담아 반환하는 메서드
	//${writeDate} --> getWriteDate()
	//수정한 날짜를 가져오기 위해서 만듦.
	public java.util.Date getWriteDate(){
		
		//getTime() 메서드: 1970년 1월 1일 0시 0분 0초부터 현재까지의 시간을 밀리초 단위로 환산한 값을 숫자로 반환한다.
		return new java.util.Date(regdate.getTime());
	}
	
	@Override
	public String toString() {
		return "BoardEditVo [idx=" + idx + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", gphoto=" + gphoto + ", regdate=" + regdate + "]";
	}
	


	
	
}
