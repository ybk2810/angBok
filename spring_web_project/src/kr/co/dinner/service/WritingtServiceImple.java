package kr.co.dinner.service;

import java.util.List;

import kr.co.dinner.dao.WritingDao;
import kr.co.dinner.dto.WritingDTO;

public class WritingtServiceImple implements WritingSerivce{
	WritingDao dao;
	
	public void setDao(WritingDao dao) {
		this.dao = dao;
	}
	@Override
	public List<WritingDTO> selectAll() {
		return dao.selectAll();
	}
	@Override
	public List<WritingDTO> readAll(String category) { 
		return dao.readAll(category);
	}
}
