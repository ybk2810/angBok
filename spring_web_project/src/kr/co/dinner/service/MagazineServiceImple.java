package kr.co.dinner.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.dinner.dao.MagazineDao;
import kr.co.dinner.dto.MagazineDTO;

public class MagazineServiceImple implements MagazineService{
	MagazineDao dao;
	
	public void setDao(MagazineDao dao) {
		this.dao = dao;
	}

	@Override
	public List<MagazineDTO> selectAll() {
		
		return dao.selectAll();
	}

	@Override
	public List<MagazineDTO> randomSelect() {

		return dao.randomSelect();
	}
}
