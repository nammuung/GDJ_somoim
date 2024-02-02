package com.somoim.app.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="com.somoim.app.member.MemberDAO.";
	
	public int setJoin(MemberDTO memberDTO)throws Exception{
		return sqlSession.insert(namespace+"setJoin", memberDTO);
	}
	
	public int setProfileJoin(ProfileDTO profileDTO)throws Exception{
		return sqlSession.insert(namespace+"setProfileJoin", profileDTO);
	}
	
	public MemberDTO getDetail(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(namespace+"getDetail", memberDTO);
	}
}
