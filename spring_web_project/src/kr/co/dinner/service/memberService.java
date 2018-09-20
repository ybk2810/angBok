package kr.co.dinner.service;


import java.util.List;

import kr.co.dinner.dto.MemberDTO;

public interface memberService {
	public void add(MemberDTO dto);
	public MemberDTO selectOne(String id,String pw);
	public boolean selectId(String id);
	public MemberDTO chooseOne(String id);
	public List<MemberDTO> randomMember();
	public void modifyOne(MemberDTO dto);
	public void imgModify(MemberDTO dto);
	public void deleteOne(MemberDTO dto);
	public MemberDTO selectIdOne(String id);
}
