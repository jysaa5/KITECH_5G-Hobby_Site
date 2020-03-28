package com.kite.gz.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardPasswordVo;

//서비스 bean으로 등록하기 
//BoardPwCheckService: 게시글의 비밀번호를 체크하는 sql문을 실행하는 서비스 클래스
@Service("pwCheckService")
public class BoardPwCheckService {

	//객체 주입
	@Autowired
	private SqlSessionTemplate template;

	//인터페이스
	private BoardDao dao;

	//passwordCheck: 게시글의 비밀번호가 맞는지 틀린지 체크하는 기능
	public boolean passwordCheck(BoardPasswordVo request) {
		
		dao = template.getMapper(BoardDao.class);
		
		//비밀번호 체크 여부를 판단하는 변수선언
		boolean pwCheck = false;

		BoardPasswordVo getgpwchek = null;

		getgpwchek = dao.pwcheck(request);
		
		if (getgpwchek != null) {

			pwCheck = true;
		}
		
		return pwCheck;
		
	}//passwordCheck 메서드 끝
	
	
	//getPostingidx 메서드: 게시글의 번호를 체크해서 해당 게시글의 데이터를 반환하는 메서드 
	public BoardPasswordVo getPostingidx(int idx) {

		//인터페이스 구현, SQL문 실행
		dao = template.getMapper(BoardDao.class);
		
		return dao.selectBoardByIdx2(idx);
		
	}//getPostingidx 메서드 끝
	

}//passwordCheck 클래스 끝