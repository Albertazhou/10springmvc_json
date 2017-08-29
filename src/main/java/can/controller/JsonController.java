package can.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import can.vo.User;

@Controller
public class JsonController {
	
	@RequestMapping("/json")
	@ResponseBody
	public List<User> json(){
		List<User> list=new ArrayList<User>();
		list.add(new User(1,"zhoangson","ÄÐ"));
		list.add(new User(2,"xiaoming","ÄÐ"));
		list.add(new User(3,"xaohong","ÄÐ"));
		return list;
	}

}
