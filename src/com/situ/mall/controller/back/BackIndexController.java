package com.situ.mall.controller.back;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Order;
import com.situ.mall.pojo.User;
import com.situ.mall.service.OrderService;
import com.situ.mall.service.ShippingService;
import com.situ.mall.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller
@RequestMapping("/index")
public class BackIndexController {

	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ShippingService shippingService;
	
	@RequestMapping("/goHome")
	public String goHome(Model model) {
		int userCount = userService.findAllUserCount();
		int orderCount = orderService.findAllOrderCount();
		List<Order> list = orderService.findOrder();
		double profit = 0.0;
		for (Order order : list) {
			profit += order.getPayment();
		}
		model.addAttribute("userCount", userCount);
		model.addAttribute("orderCount", orderCount);
		model.addAttribute("profit", profit);
		return "home";
	}
	
	@RequestMapping("/goIndex")
	public String goIndex() {
		return "index";
	}
}
