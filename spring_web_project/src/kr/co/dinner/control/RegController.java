package kr.co.dinner.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegController {
	
	@RequestMapping("/reg.do")
	public String reg() {
		
		return "registerForm";
	}

	

}
