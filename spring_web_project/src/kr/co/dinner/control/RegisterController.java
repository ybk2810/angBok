package kr.co.dinner.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.dinner.dao.MDao;
import kr.co.dinner.dto.MemberDTO;
import kr.co.dinner.service.memberService;


@Controller
public class RegisterController {
	memberService ms2;
		

	public void setMs2(memberService ms2) {
		this.ms2 = ms2;
	}



	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String register(@ModelAttribute("dto")MemberDTO dto,@RequestParam("pw") String pw,
			@RequestParam("repw") String repw) {

		if (pw.equals(repw)) {

			ms2.add(dto);
			return "loginForm";
		} else if(dto.equals("")){
			return "registerForm2";
		}else {

			return "registerForm2";
		}
		}

}
