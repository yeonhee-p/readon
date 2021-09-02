package org.readon.mapper;

import org.readon.domain.MemberVO;

public interface MemberMapper {
	public void insert(MemberVO mvo);
	//로그인
	public MemberVO login(MemberVO mvo);
	//아이디 중복 검사
	public MemberVO id_check(String id);
}
