package org.readon.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.readon.domain.BoardVO;
import org.readon.domain.Criteria;

public interface BoardMapper {
	public ArrayList<BoardVO> getList();
	public ArrayList<BoardVO> getListWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public BoardVO read(int bno);
	public boolean delete(int bno);
	public boolean update(BoardVO board);
	//댓글 건수 update
	public void updateReplycnt(@Param("bno") int bno, @Param("amount")int amount); // where 절 bno, set replycnt+1 1이 amount에 담김
}

