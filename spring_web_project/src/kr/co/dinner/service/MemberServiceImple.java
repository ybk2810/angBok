package kr.co.dinner.service;

import java.util.List;

import kr.co.dinner.dao.MDao;
import kr.co.dinner.dto.MemberDTO;

public class MemberServiceImple implements memberService{

	MDao mdao;
	
	
	
	public void setMdao(MDao mdao) {
		this.mdao = mdao;
	}



	@Override
	public void add(MemberDTO dto) {
		mdao.insertOne(dto);
	}

	@Override
	public MemberDTO selectOne(String id, String pw) {
		
		return 	mdao.selectOne(id, pw);
	}

	@Override
	public boolean selectId(String id) {
		boolean isOk = false;
		String mid = mdao.selectId(id);
		if(mid != null) {
			isOk = true;
		}
		
		return isOk;
	}



	@Override
	public MemberDTO chooseOne(String id) {
		return 	mdao.chooseOne(id);
	}
	@Override
	public List<MemberDTO> randomMember() {
		return mdao.randomMember();
	}



	@Override
	public void modifyOne(MemberDTO dto) {
		mdao.updateOne(dto);
	}



	@Override
	public void imgModify(MemberDTO dto) {
		mdao.imgModify(dto);
	}

	@Override
	public void deleteOne(MemberDTO dto) {
	mdao.removeOne(dto);
	}



	@Override
	public MemberDTO selectIdOne(String id) {
		return mdao.selectIdOne(id);
	}





}
