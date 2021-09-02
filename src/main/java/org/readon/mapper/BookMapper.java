package org.readon.mapper;

import java.util.ArrayList;

import org.readon.domain.BookVO;

public interface BookMapper {
	public void insert(BookVO vo);
	public BookVO detail(int book_id);
	//public BookVO update(BookVO vo);
	public ArrayList<BookVO> getList();
}
