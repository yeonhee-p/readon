package org.readon.controller;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.readon.domain.BoardAttachVO;
import org.readon.domain.BoardVO;
import org.readon.domain.Criteria;
import org.readon.domain.PageDTO;
import org.readon.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired//@Autowired(BoardService service new BoardService();)
	private BoardService service;
	@GetMapping("register")// 용도 : 글쓰기 화면
	public void register(HttpSession session, Model model) {
		logger.info("register");
		Object loginInfo = session.getAttribute("member");
		if(loginInfo == null) {
			model.addAttribute("msg", false);
		}
		System.out.print(loginInfo);
	}
	@PostMapping("register")// 용도 : 글쓰기 화면에서 글쓰기 버튼을 클릭
	public String registerPost(BoardVO board) {
		logger.info("registerPost"+board);
		
		//사용자가 파일선택을 클릭해서 파일업로드를 하나라도 했으면
		if(board.getAttachList()!=null) {
			// 그 파일에 대한 정보를 for문을 이용해서 가져와라
			board.getAttachList().forEach(attach->logger.info("attach의 값은"+attach));
		}
		service.register(board);
		return "redirect:/board/list";
	}
	@GetMapping("list")
	public void list(Model model,Criteria cri) {
		logger.info("list");
		int count=service.getTotalCount(cri);
		//model.addAttribute("list", service.getList());
		model.addAttribute("list", service.getListWithPaing(cri));
		model.addAttribute("pageMaker", new PageDTO(cri,count));
	}
	@GetMapping("get")
	public void get(@RequestParam("bno") int bno,Model model) {
		model.addAttribute("board",service.get(bno));
		
	}
	@PostMapping("modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		logger.info("modify");
		if(service.modify(board)) {
			rttr.addAttribute("result", "success");
			rttr.addAttribute("bno", board.getBno());
		}
		return "redirect:/board/get";
	}
	@PostMapping("remove")
	public String remove(@RequestParam("bno") int bno) {
		logger.info("remove");
		service.remove(bno);
		return "redirect:/board/list";	
	}
	@GetMapping(value="getAttachList",produces= MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody //ajax를 쓰겠다는 의미
	public ResponseEntity<ArrayList<BoardAttachVO>> getAttachList(int bno){
		logger.info("getAttachList ="+bno);
		return new ResponseEntity<>(service.getAttachList(bno),HttpStatus.OK);
	}
	
}

