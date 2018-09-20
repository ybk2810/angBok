package kr.co.dinner.dao;

import java.util.List;

import kr.co.dinner.dto.MemberDTO;

public interface MDao {
	
	public void insertOne(MemberDTO dto);
	
	public MemberDTO selectOne(String id, String pw);
	public String selectId(String id);

	public MemberDTO chooseOne(String id);

	public List<MemberDTO> randomMember();

	public void updateOne(MemberDTO dto);
	
	public void imgModify(MemberDTO dto);

	public void removeOne(MemberDTO dto);
}
