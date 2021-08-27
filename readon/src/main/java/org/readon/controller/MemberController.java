package org.readon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.readon.domain.MemberVO;
import org.readon.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberService service;
	@GetMapping("login")//로그인 페이지로 이동
	public void login() {
		logger.info("login view");
	}
	@PostMapping("join")//회원가입 페이지로 이동
	public void join() {
		logger.info("join");
	}
	@PostMapping("insert")
	public String memberInsert(MemberVO mvo) {
		logger.info("member insert");
		service.insert(mvo);
		return "redirect:/index";
	}
	/*@PostMapping("login")
	public String memberLogin(MemberVO mvo) {
		
	}*/
}
