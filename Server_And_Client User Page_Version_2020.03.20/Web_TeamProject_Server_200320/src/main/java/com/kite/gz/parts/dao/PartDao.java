package com.kite.gz.parts.dao;

import java.util.List;
import com.kite.gz.parts.domain.PartSelectRequest;
import com.kite.gz.parts.domain.PartVo;
import com.kite.gz.parts.domain.PartWriteRequest;

public interface PartDao {
	
	// 방명록에 글 데이터 입력
	public int insertArticle(PartWriteRequest request);
	// 게시글의 리스트
	public List<PartVo> selectArticleList(int startRow, int count);
	// 특정검색 리스트
	public int selectCount();
	// idx 값으로 한개의 게시물 받기
	public PartVo selectpartByIdx(int idx);
	
	//사용자
	/* 실험적 */
	// type값으로 한개의 게시물 받기
	public PartVo selectpartBytype(String type);
	public int selectingArticle(PartSelectRequest request);
	public List<PartSelectRequest> selectingList(int startRow, int count);
	// idx로 게시물 삭제select
	public int deleteSelectUserPick(int idx);
	public int deleteAllUserPick();
	
	//관리자
	// idx 값으로 한개의 게시물의 데이터 수정
	public int editArticle(PartWriteRequest request);
	// idx로 게시물 삭제
	public int deleteAdminPick(int idx);
	
	
}










