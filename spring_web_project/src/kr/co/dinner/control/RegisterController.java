package kr.co.dinner.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.dinner.dto.MemberDTO;
import kr.co.dinner.service.memberService;

@Controller
public class RegisterController {
	memberService ms2;

	public void setMs2(memberService ms2) {
		this.ms2 = ms2;
	}

	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String register(@ModelAttribute("dto") MemberDTO dto, @RequestParam("name") String name,
			@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("repw") String repw,
			@RequestParam("regisno1") String regisno1, @RequestParam("regisno2") String regisno2,
			@RequestParam("addrs1") String addrs1, @RequestParam("addrs2") String addrs2,
			@RequestParam("email") String email, @RequestParam("intro") String intro, @RequestParam("img") String img) {

		
		if(name.equals("") || id.equals("") || pw.equals("") || repw.equals("") || regisno1.equals("")
				|| regisno2.equals("") || addrs1.equals("") || addrs2.equals("") || email.equals("") || intro.equals("")
				|| img.equals("")) {
			return "registerForm2";
		}else if(pw.equals(repw)) {
			
			ms2.add(dto);
			return "loginForm";
		}
	

		else {

			return "registerForm2";
		}
	}

}
