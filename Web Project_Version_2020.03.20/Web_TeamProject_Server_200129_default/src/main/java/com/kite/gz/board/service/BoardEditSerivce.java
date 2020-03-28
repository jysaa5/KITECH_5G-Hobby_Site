package com.kite.gz.board.service;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardVo;
import com.kite.gz.board.domain.BoardWriteRequestVo;


//서비스 bean으로 등록하기 
//BoardEditSerivce: 게시글을 수정하는 sql문을 실행하는 서비스 클래스
@Service("editService")
public class BoardEditSerivce {
	
	//객체 주입
	@Autowired
	private SqlSessionTemplate template;
	
	//인터페이스 
	private BoardDao dao; 
	
	
	 //editArticle: 작성되어진 방명록 데이터를 받아서 수정하기 위해 idx를 반환하는 메서드 public int
	public int editPosting(BoardWriteRequestVo request) {
	 
	 //인터페이스 구현, SQL문 실행 
		dao= template.getMapper(BoardDao.class);
	 
	 return dao.editBoard(request); }
	 
	
	//editArticle: 작성되어진 방명록 데이터를 받아서 수정하기 위해 idx를 반환하는 메서드
	/*
	 * public int editPosting(HttpServletRequest request, BoardWriteRequestVo edit)
	 * {
	 * 
	 * //인터페이스 구현, SQL문 실행 dao= template.getMapper(BoardDao.class);
	 * 
	 * // 서버 경로 String path = "/uploadfile/userphoto"; // 리소스 매핑 필요
	 * 
	 * // 절대 경로 String dir =
	 * request.getSession().getServletContext().getRealPath(path);
	 * 
	 * BoardWriteRequestVo board = edit.toBoard();
	 * 
	 * 
	 * int resultCnt = 0;
	 * 
	 * String newFileName = "";
	 * 
	 * MultipartFile file = edit.getPhoto();
	 * 
	 * try { if (file != null && !file.isEmpty() && file.getSize() > 0) { // 새로운 파일
	 * 이름 생성 // String newFileName = memberInfo.getuId()+System.nanoTime();
	 * newFileName = board.getWriter() + "_" + file.getOriginalFilename(); // 파일을
	 * 서버의 지정 경로에 저장 file.transferTo(new File(dir, newFileName)); // 데이터베이스 저장을 하기위한
	 * 파일 이름 set board.setGphoto(newFileName);
	 * 
	 * } else {
	 * 
	 * board.setGphoto("default.png"); }
	 * 
	 * resultCnt = dao.editBoard(board);
	 * 
	 * } catch (IllegalStateException e) {
	 * 
	 * e.printStackTrace(); } catch (IOException e) {
	 * 
	 * e.printStackTrace(); } catch (Exception e) {
	 * 
	 * e.printStackTrace(); System.out.println("오류"); if (file != null) {
	 * 
	 * new File(dir, newFileName).delete();
	 * 
	 * } }
	 * 
	 * return resultCnt;
	 * 
	 * 
	 * }
	 */

	//<restapi>
		/*
		 * public BoardVo getEditFormData(int id) {
		 * 
		 * // SqlSessionTemplate getMapper 를 이용해 dao 생성 dao =
		 * template.getMapper(BoardDao.class);
		 * 
		 * BoardVo boardInfo = dao.selectBoardByIdx4(id);
		 * 
		 * return boardInfo; }
		 * 
		 * 
		 * public int edit(BoardEditVo edit, String oldFileName, HttpServletRequest
		 * request) {
		 * 
		 * // SqlSessionTemplate getMapper 를 이용해 dao 생성 dao =
		 * template.getMapper(BoardDao.class);
		 * 
		 * int rCnt = 0; BoardVo boardInfo = edit.toBoardVo();
		 * 
		 * String path = "/uploadfile/userphoto"; String dir =
		 * request.getSession().getServletContext().getRealPath(path);
		 * 
		 * // 신규 파일 체크 if (edit.getPhoto() != null && !edit.getPhoto().isEmpty() &&
		 * edit.getPhoto().getSize() > 0) {
		 * 
		 * String newFileName = edit.getWriter() + "_" +
		 * edit.getPhoto().getOriginalFilename();
		 * 
		 * try { // 신규파일 저장 edit.getPhoto().transferTo(new File(dir, newFileName)); //
		 * 데이터 베이스 저장을 위한 새로운 파일 이름 boardInfo.setGphoto(newFileName); // 이전 파일 삭제 new
		 * File(dir, oldFileName).delete();
		 * 
		 * } catch (IllegalStateException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (IOException e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); }
		 * 
		 * } else { // 신규파일이 없으면 이전 파일 이름을 그대로 업데이트 boardInfo.setGphoto(oldFileName); }
		 * 
		 * rCnt = dao.boardUpdate(boardInfo);
		 * 
		 * return rCnt;
		 * 
		 * }
		 */
	
}
