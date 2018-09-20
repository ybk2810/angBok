package kr.co.dinner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.dinner.dto.WritingDTO;

public class WritingOracleDao implements WritingDao{
	private SqlSession ss;
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	@Override
	public List<WritingDTO> selectAll() {
		return ss.selectList("kr.co.dinner.writing.selectAll");
	}
	@Override
	public void insertOne(WritingDTO dto) {
		ss.insert("kr.co.dinner.writing.insertOne",dto);
	}
	@Override
	public int getTotalData() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public WritingDTO selectOne(int bno) {
		
		return ss.selectOne("kr.co.dinner.writing.selectOne", bno);
	}
	@Override
	public void updateOne(WritingDTO dto) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void deleteOne(WritingDTO dto) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void raiseHits(int bno) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<WritingDTO> readAll(String category) {
		return ss.selectList("kr.co.dinner.writing.readAll", category);
	}
	@Override
	public List<WritingDTO> random(String category) {
		return ss.selectList("kr.co.dinner.writing.random", category);
	}
	@Override
	public List<WritingDTO> searchList(String title) {
		return ss.selectList("kr.co.dinner.writing.searchList", title);
	}

}
