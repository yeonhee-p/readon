package org.readon.controller;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.readon.domain.BookVO;
import org.readon.service.BookService;

@Controller
@RequestMapping("book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	@Autowired
	private BookService bookService;
	@GetMapping(value="create")
	public void create() {
		logger.info("BookController create get");
	}
	@PostMapping(value="create")
	public void createPost(BookVO vo) {	
		logger.info("BookController createPost");
		bookService.create(vo);
		//return "redirect:/book/create";
	}
	@GetMapping("detail")
	public void detail(@RequestParam("book_id") int book_id, Model model) {
		logger.info("BookController detail");
		model.addAttribute("book",bookService.detail(book_id));
	}
	@GetMapping("list")
	public void list(Model model) {
		logger.info("book list");
		model.addAttribute("list", bookService.getList());
	}
	@GetMapping("cat")
	public void cat(Model model) {
		logger.info("bookcat");
		model.addAttribute("list", bookService.getList());
	}
	/*@PostMapping("update")
	public String update(BookVO vo, RedirectAttributes rttr) {
		logger.info("BookController update");
		bookService.update(vo);
		rttr.addAttribute("bookId", vo.getBook_id());
		return "redirect:/book/create";
	}*/
}
