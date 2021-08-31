package org.readon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@GetMapping("index")
	public void indes() {
		logger.info("main page");
	}
}
