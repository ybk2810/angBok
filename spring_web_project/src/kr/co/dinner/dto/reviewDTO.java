package kr.co.dinner.dto;

public class reviewDTO {
	private int rno;
	private String rname;
	private String rcontents;
	private String rimg;
	private String rreg;
	private int rwno;

	
	public reviewDTO() {
	}


	public reviewDTO(int rno, String rname, String rcontents, String rimg, String rreg, int rwno) {
		super();
		this.rno = rno;
		this.rname = rname;
		this.rcontents = rcontents;
		this.rimg = rimg;
		this.rreg = rreg;
		this.rwno = rwno;
	}


	public int getRno() {
		return rno;
	}


	public void setRno(int rno) {
		this.rno = rno;
	}


	public String getRname() {
		return rname;
	}


	public void setRname(String rname) {
		this.rname = rname;
	}


	public String getRcontents() {
		return rcontents;
	}


	public void setRcontents(String rcontents) {
		this.rcontents = rcontents;
	}


	public String getRimg() {
		return rimg;
	}


	public void setRimg(String rimg) {
		this.rimg = rimg;
	}


	public String getRreg() {
		return rreg;
	}


	public void setRreg(String rreg) {
		this.rreg = rreg;
	}


	public int getRwno() {
		return rwno;
	}


	public void setRwno(int rwno) {
		this.rwno = rwno;
	}

	

	
	
	

}
