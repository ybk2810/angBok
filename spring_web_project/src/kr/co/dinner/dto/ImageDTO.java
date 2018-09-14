package kr.co.dinner.dto;

public class ImageDTO {
	
	private int ino;
	private String addrs;
	
	public ImageDTO() {
	}

	public ImageDTO(int ino, String addrs) {
		super();
		this.ino = ino;
		this.addrs = addrs;
	}

	public int getIno() {
		return ino;
	}

	public void setIno(int ino) {
		this.ino = ino;
	}

	public String getAddrs() {
		return addrs;
	}

	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}
	
	
	
	

}
