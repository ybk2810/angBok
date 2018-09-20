package kr.co.dinner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.dinner.dto.MagazineDTO;

public class MagazineOracleDao implements MagazineDao{
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<MagazineDTO> selectAll() {
		
		return ss.selectList("kr.co.dinner.magazine.selectAll");
	}

	@Override
	public List<MagazineDTO> randomSelect() {
		
		return ss.selectList("kr.co.dinner.magazine.randomSelect");
	}

	@Override
	public MagazineDTO selectOne(int mno) {
		
		return ss.selectOne("kr.co.dinner.magazine.selectOne", mno);
	}

	@Override
	public int getTotal() {

		return ss.selectOne("kr.co.dinner.magazine.count");
	}

	@Override
	public List<MagazineDTO> searchList(String mtitle) {
		return ss.selectList("kr.co.dinner.magazine.searchList", mtitle);
	}
}
