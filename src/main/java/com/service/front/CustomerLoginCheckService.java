package com.service.front;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerDao;

@Service
public class CustomerLoginCheckService {
	
	@Autowired
	private CustomerDao customerDao;

	public String customerLoginValidation(String username, String passwd) {
		String result = customerDao.returnPasswordByName(username);
		System.out.println("result: " + result);
		if (result == null)
			return "username not exist!";
		if (!Objects.equals(result, passwd)) {
			return "passwd error!";
		}
		return "OK";
	}
}
