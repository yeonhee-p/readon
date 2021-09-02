package org.readon.service;

import java.util.ArrayList;

import org.readon.domain.BookVO;

public interface BookService {
	// 책 등록
	public void create(BookVO vo);
	// 책 상세페이지
	public BookVO detail(int book_id);
	// 책 리스트(getList)
	public ArrayList<BookVO> getList();
		
	//public BookVO update(BookVO vo);
}
