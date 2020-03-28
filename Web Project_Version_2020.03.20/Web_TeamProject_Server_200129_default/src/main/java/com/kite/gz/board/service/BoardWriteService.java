package com.kite.gz.board.service;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardVo;
import com.kite.gz.board.domain.BoardWriteRequestVo;

//서비스 bean으로 등록하기 
//BoardWriteService: 게시글을 작성하는 sql을 실행하는 서비스 클래스
@Service("writeService")
public class BoardWriteService {

	//객체 주입
	@Inject
	private SqlSessionTemplate template;
	
	//인터페이스
	private BoardDao dao;
	
	//Writeposting 메서드: 게시글을 작성하고 게시글 번호를 반환하는 메서드
	public int writePosting(HttpServletRequest request, BoardWriteRequestVo write) {
	
		dao = template.getMapper(BoardDao.class);
		
		// 서버 경로
		String path = "/uploadfile/userphoto"; // 리소스 매핑 필요
		
		// 절대 경로
		String dir = request.getSession().getServletContext().getRealPath(path);

		BoardVo board = write.toBoard();
		
		
		int resultCnt = 0;

		String newFileName = "";

		MultipartFile file = write.getPhoto();
		
		try {
			if (file != null && !file.isEmpty() && file.getSize() > 0) {
				// 새로운 파일 이름 생성
				// String newFileName = memberInfo.getuId()+System.nanoTime();
				newFileName = board.getWriter() + "_" + file.getOriginalFilename();
				// 파일을 서버의 지정 경로에 저장
				file.transferTo(new File(dir, newFileName));
				// 데이터베이스 저장을 하기위한 파일 이름 set
				board.setGphoto(newFileName);
				
			} else {
				
				board.setGphoto("default.png");
			}
		
		resultCnt = dao.insertBoard(board);
		
		} catch (IllegalStateException e) {
		
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		} catch (Exception e) {
			
			e.printStackTrace();
			System.out.println("오류");
			if (file != null) {
				
				new File(dir, newFileName).delete();
				
			}
		}

		return resultCnt;
		
	}//writePosting메서드 끝
	
}//BoardWriteService 클래스 끝
