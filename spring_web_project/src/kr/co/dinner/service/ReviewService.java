package kr.co.dinner.service;

import java.util.List;

import kr.co.dinner.dto.reviewDTO;

public interface ReviewService {
	public List<reviewDTO> selectAll(int rwno);
	public void insertOne(reviewDTO dto);
	public int countAll(int rwno);
}
