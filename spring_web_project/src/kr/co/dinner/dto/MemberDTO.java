package kr.co.dinner.dto;

public class MemberDTO {
	private int no;
	private String name;
	private String id;
	private String pw;
	private String repw;
	private String regisno1;
	private String regisno2;
	private String addrs1;
	private String addrs2;
	private String email;
	private String img;
	private String intro;
	private String follower;
	private String following;

	public MemberDTO() {
	}

	public MemberDTO(int no, String name, String id, String pw, String repw, String regisno1, String regisno2,
			String addrs1, String addrs2, String email, String img, String intro, String follower, String following) {
		super();
		this.no = no;
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.repw = repw;
		this.regisno1 = regisno1;
		this.regisno2 = regisno2;
		this.addrs1 = addrs1;
		this.addrs2 = addrs2;
		this.email = email;
		this.img = img;
		this.intro = intro;
		this.follower = follower;
		this.following = following;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getRepw() {
		return repw;
	}

	public void setRepw(String repw) {
		this.repw = repw;
	}

	public String getRegisno1() {
		return regisno1;
	}

	public void setRegisno1(String regisno1) {
		this.regisno1 = regisno1;
	}

	public String getRegisno2() {
		return regisno2;
	}

	public void setRegisno2(String regisno2) {
		this.regisno2 = regisno2;
	}

	public String getAddrs1() {
		return addrs1;
	}

	public void setAddrs1(String addrs1) {
		this.addrs1 = addrs1;
	}

	public String getAddrs2() {
		return addrs2;
	}

	public void setAddrs2(String addrs2) {
		this.addrs2 = addrs2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getFollower() {
		return follower;
	}

	public void setFollower(String follower) {
		this.follower = follower;
	}

	public String getFollowing() {
		return following;
	}

	public void setFollowing(String following) {
		this.following = following;
	}
	
	
}
