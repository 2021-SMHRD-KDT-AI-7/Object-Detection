package Model;

public class userDTO {
	
	private String user_id;
	private String user_pw;
	private String user_shop;
	
	public userDTO(String user_id, String user_pw, String user_shop) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_shop = user_shop;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_shop() {
		return user_shop;
	}

	public void setUser_shop(String user_shop) {
		this.user_shop = user_shop;
	}

	
	@Override
	public String toString() {
		return "userDTO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_shop=" + user_shop + "]";
	}

	public userDTO(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	
	
}
