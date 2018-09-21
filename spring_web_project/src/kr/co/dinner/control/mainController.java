package kr.co.dinner.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner.dto.MagazineDTO;
import kr.co.dinner.dto.MemberDTO;
import kr.co.dinner.dto.WritingDTO;
import kr.co.dinner.dto.reviewDTO;
import kr.co.dinner.service.MagazineService;
import kr.co.dinner.service.ReviewService;
import kr.co.dinner.service.WritingSerivce;
import kr.co.dinner.service.memberService;

@Controller
public class mainController {
	memberService member;
	MagazineService ms;
	WritingSerivce ws;
	memberService ms1;
	ReviewService rs;
	
	public void setRs(ReviewService rs) {
		this.rs = rs;
	}

	public memberService getMs1() {
		return ms1;
	}

	public void setMs1(memberService ms1) {
		this.ms1 = ms1;
	}

	public void setMs(MagazineService ms) {
		this.ms = ms;
	}
	
	public void setWs(WritingSerivce ws) {
		this.ws = ws;
	}

	public void setMember(memberService member) {
		this.member = member;
	}

	@RequestMapping("/main.do")
	public ModelAndView main(HttpSession hs) {
		ModelAndView mav = new ModelAndView();
		
		List<MagazineDTO> mlist = ms.randomSelect();
		List<MemberDTO> memberlist = member.randomMember();
		
		mav.addObject("mlist", mlist);
		mav.addObject("memberlist", memberlist);
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping("/mainCategory.do")
	public ModelAndView mainCategory(@RequestParam("category")String category, HttpSession hs) {
		ModelAndView mav = new ModelAndView();
		
		List<MagazineDTO> mlist = ms.randomSelect();
		List<MemberDTO> memberlist = member.randomMember();
		List<WritingDTO> wlist = ws.random(category);
		
		mav.addObject("mlist", mlist);
		mav.addObject("memberlist", memberlist);
		mav.addObject("wlist", wlist);
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
	
	@RequestMapping("/searchForm.do")
	public ModelAndView search() {
		
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> memberlist = member.randomMember();
		mav.addObject("memberlist", memberlist);
		mav.setViewName("search");
		return mav;
	}
	
	@RequestMapping("/search.do")
	public ModelAndView searchForm(@RequestParam("mtitle")String mtitle) {
		ModelAndView mav = new ModelAndView();
		List<MagazineDTO> mglist = ms.searchList(mtitle);
		List<WritingDTO> wglist = ws.searchList(mtitle);
		
		mav.addObject("mglist", mglist);
		mav.addObject("wglist", wglist);
		
		mav.setViewName("allSearch");
		
		return mav;
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
		if(category.equals("�쟾泥�")) {
			List<WritingDTO> clist = ws.selectAll();
			mav.addObject("clist", clist);
		}else {			
			List<WritingDTO> clist = ws.readAll(category);
			System.out.println(clist);
			mav.addObject("clist", clist);
		}
		mav.setViewName("plates");
		return mav;
	}
	
	@RequestMapping("/write.do")
	public String write() {
		return "/write";
	}
	
	@RequestMapping("/magazineDetail.do")
	public ModelAndView magazineDetail(@RequestParam("mno")int mno) {
		ModelAndView mav = new ModelAndView();
		MagazineDTO mdto = ms.selectOne(mno);
		List<reviewDTO> rlist = rs.selectAll(mno); 
		int count = rs.countAll(mno);
		
		mav.addObject("mgdto",mdto);
		mav.addObject("rlist", rlist);
		mav.addObject("count", count);
		mav.setViewName("magazineDetail");
		return mav;

	}
	
	@RequestMapping("/myPage.do")
	public ModelAndView myPage(@RequestParam("name")String name) {
		ModelAndView mav = new ModelAndView();
		List<WritingDTO> wlist = ws.myList(name);
		
		mav.addObject("wlist", wlist);
		mav.setViewName("myPage");
	
		return mav;	
	}

	@RequestMapping("/modify.do")
	public ModelAndView modify(@RequestParam("id")String id) {
		MemberDTO dto = ms1.chooseOne(id);
		return new ModelAndView("modify","dto",dto);
	}

	@RequestMapping(value="/modifyOk.do", method=RequestMethod.POST)
	public String modifyOk(@ModelAttribute("dto")MemberDTO dto, HttpSession session) {
		ms1.modifyOne(dto);

		session.setAttribute("member", dto);

		
		return "myPage";
	}
	
	@RequestMapping("/reviewOk.do")
	public String reviewOk(@ModelAttribute("dto")reviewDTO dto) {
		rs.insertOne(dto);

		return "redirect:/magazineDetail.do?mno="+dto.getRwno();
	}
	
	@RequestMapping("/reviewOk2.do")
	public String reviewOk2(@ModelAttribute("dto")reviewDTO dto) {
		rs.insertOne(dto);

		return "redirect:/writeDetail.do?wno="+dto.getRwno();
	}
	
	@RequestMapping("/delete.do")
	public String delete(@ModelAttribute("dto")MemberDTO dto, HttpSession session) {
		member.deleteOne(dto);
		session.removeAttribute("member");
		session.removeAttribute("id");
		
		return "main";
	}
	
	@RequestMapping("/writerPage.do")
	public ModelAndView writerPage(@RequestParam("id")String id) {
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = member.selectIdOne(id);
		List<WritingDTO> wlist = ws.myList(dto.getName());
		
		mav.addObject("wlist", wlist);
		mav.addObject("mdto", dto);
		mav.setViewName("writerPage");
		
		return mav;
	}
	
}


