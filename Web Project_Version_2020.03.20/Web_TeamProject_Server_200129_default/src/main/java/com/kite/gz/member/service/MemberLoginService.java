package com.kite.gz.member.service;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kite.gz.member.dao.MemberDaoInterface;
import com.kite.gz.member.domain.OpMember;

@Service("mLoginService")
public class MemberLoginService implements MemberService {

	// @Autowired
	// private MemberJdbcTemplateDao dao;

	// 자동 메퍼를 이용해서 생성할 dao
	private MemberDaoInterface dao;

	// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
	// @Inject : 타입에 맞는 주입 ( java 에서 지원 : 특정 프레임워크에 의존하지 않음 )
	@Inject
	private SqlSessionTemplate template;

	public int login(String id, String pw, HttpServletRequest request) {

		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberDaoInterface.class);

		// 변수 타입 변경 boolean -> int
		// 0 : 로그인 실패
		// 1 : 미인증 로그인
		// 2 : 로그인 정상 처리
		int loginChk = 0;

		OpMember memberInfo = null;

		memberInfo = dao.selectMemberById(id, pw);

		if (memberInfo != null) {

			request.getSession(true).setAttribute("loginInfo", memberInfo.toLoginInfo());
			loginChk = 2;
		}

		return loginChk;

	}

}
