package kr.co.dinner.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.dinner.dao.WritingDao;
import kr.co.dinner.dto.WritingDTO;

@Controller
public class WritingUploadController {
	
	WritingDao wdao;
	
	
	
	
	public void setWdao(WritingDao wdao) {
		this.wdao = wdao;
	}




	@RequestMapping(value="/writingUpload.do", method=RequestMethod.POST)
	public String writingUpload(@ModelAttribute("wdto")WritingDTO wdto, @RequestParam("ir1")String text) {
		wdto.setContents(text);		
		wdao.insertOne(wdto);		
		return "redirect:/main.do";
	}
}
