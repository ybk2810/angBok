package kr.co.dinner.dao;

import java.util.List;

import kr.co.dinner.dto.WritingDTO;


public interface WritingDao {
	public List<WritingDTO> selectAll();
	public void insertOne(WritingDTO dto);
	public int getTotalData();
	public WritingDTO selectOne(int bno);
	public void updateOne(WritingDTO dto);
	public void deleteOne(WritingDTO dto);
	public void raiseHits(int bno);
}
