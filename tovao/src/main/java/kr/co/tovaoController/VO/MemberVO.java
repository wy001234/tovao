package kr.co.tovaoController.VO;

public class MemberVO {

	private String uid;
	private String pass;	
	private String name;
	private String level;
	private String regip;
	private String rdate;
	private String sessId;
	private String sessLimitDate;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getSessId() {
		return sessId;
	}
	public void setSessId(String sessId) {
		this.sessId = sessId;
	}
	public String getSessLimitDate() {
		return sessLimitDate;
	}
	public void setSessLimitDate(String sessLimitDate) {
		this.sessLimitDate = sessLimitDate;
	}

	
	
}
