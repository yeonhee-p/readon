package org.readon.mapper;

import org.readon.domain.MemberVO;

public interface MemberMapper {
	public void insert(MemberVO mvo);
	//로그인
	public MemberVO login(MemberVO mvo);
	
}
