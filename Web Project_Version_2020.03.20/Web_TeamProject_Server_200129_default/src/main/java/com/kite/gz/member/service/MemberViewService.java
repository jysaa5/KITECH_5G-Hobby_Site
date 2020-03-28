package com.kite.gz.member.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kite.gz.member.dao.MemberDaoInterface;
import com.kite.gz.member.domain.OpMember;

@Service
public class MemberViewService implements MemberService {

	// @Autowired
	// private MemberJdbcTemplateDao dao;

	// 자동 메퍼를 이용해서 생성할 dao
	private MemberDaoInterface dao;

	// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
	// @Inject : 타입에 맞는 주입 ( java 에서 지원 : 특정 프레임워크에 의존하지 않음 )
	@Inject
	private SqlSessionTemplate template;

	public OpMember getMember(int idx) {

		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberDaoInterface.class);

		return dao.selectMemberByIdx(idx);

	}

}