package kr.co.dinner.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner.dao.WritingDao;
import kr.co.dinner.dto.WritingDTO;
import kr.co.dinner.service.WritingSerivce;

@Controller
public class WritingUploadController {
	
	WritingSerivce ws;

	public void setWs(WritingSerivce ws) {
		this.ws = ws;
	}


	@RequestMapping("/writing.do")
	public ModelAndView write(@ModelAttribute("wdto")WritingDTO wdto) {
		ModelAndView mav = new ModelAndView();
		ws.insertOne(wdto);
		
		WritingDTO dto = ws.selectOne(wdto.getWno());
		
		mav.addObject("wdto", dto);
		mav.setViewName("writing");
		
		return mav;
	}


	@RequestMapping(value="/writingUpload.do", method=RequestMethod.POST)
	public String writingUpload(@ModelAttribute("wdto")WritingDTO wdto, @RequestParam("ir1")String text) {
		/*ws.setContents(text);*/		
		ws.insertOne(wdto);		
		return "redirect:/main.do";
	}
}
