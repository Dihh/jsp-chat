package chat;

import org.apache.tomcat.util.json.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import api.User;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class chatController {
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public ModelAndView showMessage(
//		@RequestParam(value = "name", required = false, defaultValue = "World") String name
		) {
		
 
		ModelAndView mv = new ModelAndView("/WEB-INF/views/chat");
//		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping(value = "/api", method = RequestMethod.GET)
	public ModelAndView showApi(
//		@RequestParam(value = "name", required = false, defaultValue = "World") String name
		) {
		ObjectMapper mapper = new ObjectMapper();
		User u = new User("a","b","c");
		String json = "";
		try {
			json = mapper.writeValueAsString(u);
			System.out.println("ResultingJSONstring = " + json);
		}catch (Exception e) {
			System.out.println(e);
		}
		ModelAndView mv = new ModelAndView("/WEB-INF/views/getMessage");
//		String a = "[ { \"a\":\"a\" } ]"; 
		mv.addObject("name", json);
		return mv;
	}
}
