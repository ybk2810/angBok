package kr.co.dinner.dto;

public class MagazineDTO {
	private String mtitle;
	private String mtimg;
	private String mcimg;
	private String mreg;
	private int mno;
	private String mwriter;
	private String mcontents;
	
	public MagazineDTO() { }

	public MagazineDTO(String mtitle, String mtimg, String mcimg, String mreg, int mno, String mwriter, String mcontents) {
		super();
		this.mtitle = mtitle;
		this.mtimg = mtimg;
		this.mcimg = mcimg;
		this.mreg = mreg;
		this.mno = mno;
		this.mwriter = mwriter;
		this.mcontents = mcontents;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMtimg() {
		return mtimg;
	}

	public void setMtimg(String mtimg) {
		this.mtimg = mtimg;
	}

	public String getMcimg() {
		return mcimg;
	}

	public void setMcimg(String mcimg) {
		this.mcimg = mcimg;
	}

	public String getMreg() {
		return mreg;
	}

	public void setMreg(String mreg) {
		this.mreg = mreg;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getMwriter() {
		return mwriter;
	}

	public void setMwriter(String mwriter) {
		this.mwriter = mwriter;
	}

	public String getMcontents() {
		return mcontents;
	}
	
	public void setMcontents(String mcontents) {
		this.mcontents = mcontents;
	}
}
