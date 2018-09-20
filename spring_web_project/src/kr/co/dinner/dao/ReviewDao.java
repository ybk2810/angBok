package kr.co.dinner.dao;

import java.util.List;

import kr.co.dinner.dto.reviewDTO;

public interface ReviewDao {
	public List<reviewDTO> selectAll(int rwno);
	public void insertOne(reviewDTO dto);
	public int countAll(int rwno);
}
