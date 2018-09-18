package kr.co.dinner.dao;

import java.util.List;

import kr.co.dinner.dto.MemberDTO;

public interface MDao {
	
	public void insertOne(MemberDTO dto);
	
	public MemberDTO selectOne(String id, String pw);
	public String selectId(String id);
	public List<MemberDTO> randomMember();
}
