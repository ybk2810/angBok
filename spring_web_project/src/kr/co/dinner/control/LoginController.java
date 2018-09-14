package kr.co.dinner.control;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner.dao.MDao;
import kr.co.dinner.dto.MemberDTO;
import kr.co.dinner.service.memberService;

@Controller
public class LoginController {
	
	memberService ms1;
	
	
	


	public void setMs1(memberService ms1) {
		this.ms1 = ms1;
	}

	@RequestMapping("/login1.do")
	public String login1(){
		return "loginForm";
	}
	
	@RequestMapping("/login2.do")
	public ModelAndView login2(@RequestParam("id")String id,@RequestParam("pw")String pw, HttpSession session){
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = ms1.selectOne(id, pw);
		boolean memberId = ms1.selectId(id);
		
		if(memberId) {
			mav.addObject("mdto", dto);
			mav.setViewName("main");			
			session.setAttribute("id",dto.getId());
		}else {
			mav.addObject("mdto", "실패");
			mav.setViewName("main");
		}
		
		return mav;	
	}
	
	
	

}
