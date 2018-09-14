package kr.co.dinner.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner.dto.MagazineDTO;
import kr.co.dinner.dto.WritingDTO;
import kr.co.dinner.service.MagazineService;
import kr.co.dinner.service.WritingSerivce;

@Controller
public class mainController {
	MagazineService ms;
	WritingSerivce ws;

	public void setMs(MagazineService ms) {
		this.ms = ms;
	}
	
	public void setWs(WritingSerivce ws) {
		this.ws = ws;
	}

	@RequestMapping("/main.do")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		
		List<MagazineDTO> mlist = ms.randomSelect();
		
		mav.addObject("mlist", mlist);
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping("/search.do")
	public String searchForm() {
		return "search";
	}
	
	@RequestMapping("/plates.do")
	   public ModelAndView plates() {
	      ModelAndView mav = new ModelAndView();
	      List<WritingDTO> wlist = ws.selectAll();
	      
	      mav.addObject("wlist", wlist);
	      mav.setViewName("plates");
	      
	      return mav;
	   }
	
/*	@RequestMapping("/mypage.do")
	public ModelAndView */
}
