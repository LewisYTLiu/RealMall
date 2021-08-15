package com.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.front.CustomerLoginCheckService;

@Controller
public class LoginController {
	
	@Autowired
	private CustomerLoginCheckService customerLoginService;

	@RequestMapping("/customer/login")
	public String customerLoginValidation(HttpServletRequest request, Model model) {
		String username = request.getParameter("login_name");
		String passwd = request.getParameter("login_passwd");
		String result = customerLoginService.customerLoginValidation(username, passwd);
		if (!result.contains("OK")) {
			model.addAttribute("result", result);
			return "login";
		}
		model.addAttribute("username", username);
		return "redirect:/index";
	}
}
