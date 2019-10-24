package chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class chatController {
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public ModelAndView showMessage(
//		@RequestParam(value = "name", required = false, defaultValue = "World") String name
		) {
	
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("/WEB-INF/views/chat");
//		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping(value = "/api", method = RequestMethod.GET)
	public ModelAndView showApi(
//		@RequestParam(value = "name", required = false, defaultValue = "World") String name
		) {
		ModelAndView mv = new ModelAndView("/WEB-INF/views/getMessage");
		String a = "[ { \"a\":\"a\" } ]"; 
		mv.addObject("name", a);
		return mv;
	}
}
