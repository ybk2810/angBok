package kr.co.dinner.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner.dto.MagazineDTO;
import kr.co.dinner.dto.MemberDTO;
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
	
	
	@RequestMapping("/allmagazine.do")
	public ModelAndView magazine() {
		ModelAndView mav = new ModelAndView();
		
		List<MagazineDTO> amlist =  ms.selectAll();
		mav.addObject("amlist", amlist);
		mav.setViewName("allMagazineForm");
		
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
	@RequestMapping("/category.do")
	public ModelAndView categoryList(@RequestParam("category")String category) {
		ModelAndView mav = new ModelAndView();
		List<WritingDTO> clist = ws.readAll(category);
		System.out.println(clist);
		mav.addObject("clist", clist);
		mav.setViewName("plates");
		return mav;
	}
	
	@RequestMapping("/viewWriting.do")
	public ModelAndView viewWriting(@RequestParam("mno")int mno) {
		ModelAndView mav = new ModelAndView();
		MagazineDTO mdto = ms.selectOne(mno);
		mav.addObject("mdto",mdto);
		mav.setViewName("viewWriting");
		return mav;
	}
	
	@RequestMapping("/write.do")
	public String write() {
		return "SmartEditor/write";
	}
	
	@RequestMapping("/magazineDetail.do")
	public ModelAndView magazineDetail(@RequestParam("mno")int mno) {
		ModelAndView mav = new ModelAndView();
		MagazineDTO mdto = ms.selectOne(mno);
		mav.addObject("mdto",mdto);
		mav.setViewName("viewWriting");
		return mav;
	}
}
