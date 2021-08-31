package org.readon.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.readon.domain.MemberVO;
import org.readon.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	private MemberMapper mapper;
	
	public void insert(MemberVO mvo) {
		logger.info("MemberService insert");
		mapper.insert(mvo);
	}
	public MemberVO login(MemberVO mvo) {
		return mapper.login(mvo);
	}
	

}
