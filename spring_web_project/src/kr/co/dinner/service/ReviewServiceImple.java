package kr.co.dinner.service;

import java.util.List;

import kr.co.dinner.dao.ReviewDao;
import kr.co.dinner.dto.reviewDTO;

public class ReviewServiceImple implements ReviewService{
	ReviewDao dao;
	
	public void setDao(ReviewDao dao) {
		this.dao = dao;
	}

	@Override
	public List<reviewDTO> selectAll(int rwno) {
		return dao.selectAll(rwno);
	}

	@Override
	public void insertOne(reviewDTO dto) {
		dao.insertOne(dto);
	}

}
