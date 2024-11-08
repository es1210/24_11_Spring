package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Member;
import com.example.demo.vo.ResultData;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public ResultData<Member> doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email) {
		
		if(loginId == null || loginId.trim().length() == 0) {
			return ResultData.from("F-1", "loginId 입력 x");
		}
		if(loginPw == null || loginPw.trim().length() == 0) {
			return ResultData.from("F-2", "loginPw 입력 x");
		}
		if(name == null || name.trim().length() == 0) {
			return ResultData.from("F-3", "name 입력 x");
		}
		if(nickname == null || nickname.trim().length() == 0) {
			return ResultData.from("F-4", "nickname 입력 x");
		}
		if(cellphoneNum == null || cellphoneNum.trim().length() == 0) {
			return ResultData.from("F-5", "cellphoneNum 입력 x");
		}
		if(email == null || email.trim().length() == 0) {
			return ResultData.from("F-6", "email 입력 x");
		}

		ResultData doJoinRd = memberService.doJoin(loginId, loginPw, name, nickname, cellphoneNum, email);

		if (doJoinRd.isFail()) {
			return doJoinRd;
		}
		
		Member member = memberService.getMemberById((int) doJoinRd.getData1());

		return ResultData.newData(doJoinRd, member);
	}

}