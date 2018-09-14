package kr.co.dinner.dto;

public class WritingDTO {
	private int wno;
	private String title;
	private String contents;
	private String wname;
	private String reg;
	private String timg;
	private String wimg;
	private String category;
	private int hits;
	
	public WritingDTO() {
	}

	public WritingDTO(int wno, String title, String contents, String wname, String reg, String timg, String wimg,
			String category, int hits) {
		super();
		this.wno = wno;
		this.title = title;
		this.contents = contents;
		this.wname = wname;
		this.reg = reg;
		this.timg = timg;
		this.wimg = wimg;
		this.category = category;
		this.hits = hits;
	}

	public int getWno() {
		return wno;
	}

	public void setWno(int wno) {
		this.wno = wno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWname() {
		return wname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public String getReg() {
		return reg;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}

	public String getTimg() {
		return timg;
	}

	public void setTimg(String timg) {
		this.timg = timg;
	}

	public String getWimg() {
		return wimg;
	}

	public void setWimg(String wimg) {
		this.wimg = wimg;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}
	
	

}
