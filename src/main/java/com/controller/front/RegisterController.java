package com.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CustomerDao;
import com.entity.CustomerEntity;
import com.service.front.CustomerRegisterService;

@Controller
public class RegisterController {
	
	@Autowired
	private CustomerEntity customerEntity;
	
	@Autowired
	private CustomerDao customerDao;

	@Autowired
	private CustomerRegisterService customerRegisterService;

	@RequestMapping("/customer/register")
	public String customerRegisterValidation(HttpServletRequest request, Model model) {
		String username = request.getParameter("register_name");
		String passwd = request.getParameter("register_passwd");
		String readResult = customerDao.returnPasswordByName(username);
		if (readResult != null) {
			
			model.addAttribute("result", "username already exist.");
			return "register";
		}
		customerEntity.setUsername(username);
		customerEntity.setPasswd(passwd);
		customerRegisterService.customerRegisterValidation(customerEntity);
		model.addAttribute("username", customerEntity.getUsername());
		return "redirect:/index";
	}
}
