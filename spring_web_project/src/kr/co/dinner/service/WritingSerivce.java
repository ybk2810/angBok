package kr.co.dinner.service;

import java.util.List;

import kr.co.dinner.dto.WritingDTO;


public interface WritingSerivce {
	public List<WritingDTO> selectAll();
	public List<WritingDTO> readAll(String category);
	public void insertOne(WritingDTO dto);
	public WritingDTO selectOne(int bno);
	public List<WritingDTO> random(String category);
	public List<WritingDTO> searchList(String title);
}
