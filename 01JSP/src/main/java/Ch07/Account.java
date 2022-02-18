package Ch07;

public class Account{
	private String id;
	private String pw;
	private String sid;
	public Account(String id, String pw, String sid) {
		this.id=id; this.pw=pw; this.sid=sid;
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
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
}