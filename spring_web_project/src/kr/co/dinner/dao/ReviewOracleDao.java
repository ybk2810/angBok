package kr.co.dinner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.dinner.dto.reviewDTO;

public class ReviewOracleDao implements ReviewDao {
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<reviewDTO> selectAll(int rwno) {
		return ss.selectList("kr.co.dinner.review.selectAll", rwno);
	}

	@Override
	public void insertOne(reviewDTO dto) {
		ss.insert("kr.co.dinner.review.insertOne", dto);
	}

	@Override
	public int countAll(int rwno) {
		return ss.selectOne("kr.co.dinner.review.countAll", rwno);
	}

}
