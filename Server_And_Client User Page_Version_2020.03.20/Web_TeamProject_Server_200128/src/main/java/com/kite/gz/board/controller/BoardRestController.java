package com.kite.gz.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kite.gz.member.domain.OpMember;
import com.kite.gz.member.domain.RequestMemberEdit;
import com.kite.gz.member.domain.RequestMemberRegist;
import com.kite.gz.member.service.MemberDeleteService;
import com.kite.gz.member.service.MemberEditService;
import com.kite.gz.member.service.MemberListService;
import com.kite.gz.member.service.MemberRegService;
import com.kite.gz.member.service.MemberViewService;

// /gz/rest/v1/members : 우리가 만든 경로
// 외부에서는: http://localhost:8080/gz/restapi/v1/gamezone
@RestController
@RequestMapping("/restapi/v1/gamezone") //gz: context 경로
public class BoardRestController {

	/*
	 * @Autowired MemberViewService viewService;
	 * 
	 * @Autowired MemberListService listService;
	 * 
	 * @Autowired MemberRegService regService;
	 * 
	 * @Autowired MemberEditService editService;
	 * 
	 * @Autowired MemberDeleteService deleteService;
	 * 
	 * //전체 리스트 출력해줌.
	 * 
	 * @GetMapping public List<OpMember> getMembers() { return
	 * listService.getAllList(); }
	 * 
	 * // /restapi/v1/1 -> id = 1 ///restapi/v1/{id}
	 * 
	 * @GetMapping("/{id}") public OpMember getMember(@PathVariable("id") int idx) {
	 * return viewService.getMember(idx); }
	 * 
	 * //RequestMapping을 한 것과 같다.
	 * 
	 * @PostMapping public String regMember(RequestMemberRegist regist,
	 * HttpServletRequest request) { String result = "fail";
	 * 
	 * //insert되면 sql문에서 1로 들어온다. if (regService.memberInsert(request, regist) > 0)
	 * { result = "success"; } return result; }
	 * 
	 * // member 회원 가입폼의 정보를 보내는 것. // /restapi/v1/{idx}
	 * 
	 * @PutMapping("/{idx}") public String editMember( RequestMemberEdit edit,
	 * HttpServletRequest request,
	 * 
	 * @PathVariable("idx") int idx ) { String result = "fail";
	 * 
	 * edit.setIdx(idx);
	 * 
	 * if (editService.edit(edit, edit.getOldFile(), request) > 0) { result =
	 * "success"; } return result; }
	 * 
	 * 
	 * // /restapi/v1/{idx}
	 * 
	 * @DeleteMapping("/{idx}") public String deleteMember(@PathVariable("idx") int
	 * idx) { String result = "fail"; if (deleteService.memberDelete(idx) > 0) {
	 * result = "success"; } return result; }
	 * 
	 */
	
	


}