package kr.co.dinner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.activation.DataSource;

import org.apache.ibatis.session.SqlSession;

import kr.co.dinner.dto.MemberDTO;

public class MemberDAO implements MDao {
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void insertOne(MemberDTO dto) {
		ss.insert("kr.co.dinner.member.insertOne", dto);

	}

	@Override
	public MemberDTO selectOne(String id, String pw) {
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		
		return ss.selectOne("kr.co.dinner.member.selectOne", dto);
	}

	@Override
	public String selectId(String id) {
		return ss.selectOne("kr.co.dinner.member.selectId", id);
	}

	@Override
	public MemberDTO chooseOne(String id) {
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		return ss.selectOne("kr.co.dinner.member.chooseOne", dto);
	}
	
	@Override	
	public List<MemberDTO> randomMember() {
		return ss.selectList("kr.co.dinner.member.randomMember");
	}

	@Override
	public void updateOne(MemberDTO dto) {
		ss.update("kr.co.dinner.member.modifyOne", dto);
	}

}
