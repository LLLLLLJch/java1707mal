package com.situ.mall.controller.back;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.User;
import com.situ.mall.service.UserService;

@Controller
@RequestMapping("/getBackLogin")
public class BackLoginController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/gotoLoginPage")
	public String gotoLoginPage() {
		return "backlogin";
		
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request,String userName,String password) {
		User user = userService.findUserByNameAndPasswordAdmin(userName, password);
		if(user != null){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "redirect:/background/findAllCategory.action";
		}
		return null;
		
	}
}
