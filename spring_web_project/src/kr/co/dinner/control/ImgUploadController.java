package kr.co.dinner.control;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller 
public class ImgUploadController {
	FileValidator fileValidator;

	public void setFileValidator(FileValidator fileValidator) {
		this.fileValidator = fileValidator;
	}
	
	@RequestMapping(value="/upload.do", method=RequestMethod.POST)
	public  ModelAndView uploadImg(@ModelAttribute("uploadFile")UploadFile file,HttpServletRequest req,BindingResult result ){
		MultipartFile mfile = file.getFile();
		fileValidator.validate(file, result);
		
		if (result.hasErrors()) {
		
			return new ModelAndView("registerForm");
		}
		HttpSession hs = req.getSession();
		ServletContext application  = hs.getServletContext();
		String filePath =application.getRealPath("/image");
		
		String filename =mfile.getOriginalFilename();
		File f = new File(filePath+"/"+filename);
		System.out.println(filePath);
		
		try {
			mfile.transferTo(f);//파일 저장
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("filename",f.getName());
		mav.addObject("filePath", "../image/"+f.getName());
		mav.setViewName("registerForm");
		
		
		return mav;
		
		
	}
	
	
	
	

}
