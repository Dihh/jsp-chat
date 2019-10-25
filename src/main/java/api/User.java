package api;

public class User {
	private String user_id;
	private String user_email;
	private String user_password;
	
	public User(String user_id, String user_email, String user_password) {
		this.user_id = user_id;
		this.user_email = user_email;
		this.user_password = user_password;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getUser_email() {
		return user_email;
	}

	public String getUser_password() {
		return user_password;
	}
	
	
	
}
