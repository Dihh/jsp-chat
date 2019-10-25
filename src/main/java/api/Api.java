package api;
import org.apache.tomcat.util.json.JSONParser;


public class Api {
	public String login(String user_id, String user_email, String user_password) {
		User user = new User(user_id, user_email, user_password);
		String a = new JSONParser("Hello World").toString();
		
		return "";
	}
}
