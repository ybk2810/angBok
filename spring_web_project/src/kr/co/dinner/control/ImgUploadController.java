package kr.co.dinner.control;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner.dto.MemberDTO;
import kr.co.dinner.service.memberService;

@Controller 
public class ImgUploadController {
	FileValidator fileValidator;
	memberService ms;

	public void setMs(memberService ms) {
		this.ms = ms;
	}

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
			
			fileCopy(filePath+"/"+f.getName(), "..\\WebContent\\image/"+f.getName());
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("filename",f.getName());
		mav.addObject("filePath", "image/"+f.getName());
		mav.setViewName("registerForm");
		
		System.out.println(filePath);
		
		
		return mav;
		
		
	}
	
	@RequestMapping(value="/uploadModify.do", method=RequestMethod.POST)
	public  ModelAndView modifyImg(@ModelAttribute("uploadFile")UploadFile file,HttpServletRequest req,BindingResult result, HttpSession hs ){
		MultipartFile mfile = file.getFile();
		fileValidator.validate(file, result);
		
		if (result.hasErrors()) {
		
			return new ModelAndView("myPage");
		}
		hs = req.getSession();
		ServletContext application  = hs.getServletContext();
		String filePath =application.getRealPath("/image");
		
		String filename =mfile.getOriginalFilename();
		File f = new File(filePath+"/"+filename);
		System.out.println(filePath);
		
		try {
			mfile.transferTo(f);//파일 저장
			
			fileCopy(filePath+"/"+f.getName(), "..\\WebContent\\image/"+f.getName());
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		MemberDTO mdto = (MemberDTO) hs.getAttribute("member");
		mdto.setImg("image/"+f.getName());
		ms.imgModify(mdto);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("filename",f.getName());
		mav.addObject("filePath", "image/"+f.getName());
		mav.setViewName("myPage");
		
		System.out.println(filePath);
		
		
		return mav;
		
		
	}
	
	 public static void fileCopy(String inFileName, String outFileName) {
		  try {
		   FileInputStream fis = new FileInputStream(inFileName);
		   FileOutputStream fos = new FileOutputStream(outFileName);
		   
		   int data = 0;
		   while((data=fis.read())!=-1) {
		    fos.write(data);
		   }
		   fis.close();
		   fos.close();
		   
		  } catch (IOException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
		 }
	
	 @RequestMapping(value="/upload2.do", method=RequestMethod.POST)
		public  ModelAndView uploadImg2(@ModelAttribute("uploadFile")UploadFile file,HttpServletRequest req,BindingResult result ){
			MultipartFile mfile = file.getFile();
			fileValidator.validate(file, result);
			
			if (result.hasErrors()) {
			
				return new ModelAndView("write");
			}
			HttpSession hs = req.getSession();
			ServletContext application  = hs.getServletContext();
			String filePath =application.getRealPath("/image");
			
			String filename =mfile.getOriginalFilename();
			File f = new File(filePath+"/"+filename);
			System.out.println(filePath);
			
			try {
				mfile.transferTo(f);//파일 저장
				
				fileCopy(filePath+"/"+f.getName(), "..\\WebContent\\image/"+f.getName());
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("filename",f.getName());
			mav.addObject("filePath", "image/"+f.getName());
			mav.setViewName("write");
			
			System.out.println(filePath);
			
			return mav;			
			
		}

}
