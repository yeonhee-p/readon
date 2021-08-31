package org.readon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.readon.domain.MemberVO;
import org.readon.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberService service;
	@GetMapping("login")//로그인 페이지
	public void login() {
		logger.info("login view");
	}
	@PostMapping("login")//login
	public String memberSelect(MemberVO mvo, Model model, HttpServletRequest req, RedirectAttributes rttr) {
		logger.info("MemberController memberSelect");
		HttpSession session=req.getSession();
		model.addAttribute("member",service.login(mvo));
		
		MemberVO login = service.login(mvo);
		if(login == null) {//로그인에 값이 없을 경우 
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/login";
		}else {
			session.setAttribute("member", login);
			return "redirect:/index";
		}
		
	}
	@GetMapping("logout")//로그아웃
	public String logout(HttpSession session) {
		logger.info("get logout");
		session.invalidate();
		return "redirect:/index";
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
	
	





}