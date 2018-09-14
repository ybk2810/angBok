package kr.co.dinner.control;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
	//검사대상:target 이때 발생하는 에러: errors
		
		UploadFile file =(UploadFile) target;
		MultipartFile mf = file.getFile();
		
		if(mf.getSize()==0) {
			//파일을 선택하지않고 버튼을 누른경우
			errors.rejectValue("file", null, "파일이 선택되지 않았습니다");
		}else if(mf.getSize()>104857600) {
			errors.rejectValue("file", null, "100메가 이하의파일만 전송 가능합니다.");
		
		}
	}
	

}
