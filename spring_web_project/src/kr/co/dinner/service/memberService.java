package kr.co.dinner.service;


import kr.co.dinner.dto.MemberDTO;

public interface memberService {
	public void add(MemberDTO dto);
	public MemberDTO selectOne(String id,String pw);
	public boolean selectId(String id);
}
