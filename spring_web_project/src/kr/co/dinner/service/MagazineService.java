package kr.co.dinner.service;

import java.util.List;

import kr.co.dinner.dto.MagazineDTO;

public interface MagazineService {
	public List<MagazineDTO> selectAll();
	public List<MagazineDTO> randomSelect();
	public MagazineDTO selectOne(int mno);
}
