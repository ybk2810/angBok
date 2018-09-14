package kr.co.dinner.dao;

import java.util.List;

import kr.co.dinner.dto.MagazineDTO;

public interface MagazineDao {
	public List<MagazineDTO> selectAll();
	public List<MagazineDTO> randomSelect();
	public MagazineDTO selectOne(int mno);
	public int getTotal();
}
