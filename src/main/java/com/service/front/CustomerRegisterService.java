package com.service.front;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerDao;
import com.entity.CustomerEntity;

@Service
public class CustomerRegisterService {
	
	@Autowired
	private CustomerDao customerDao;

	public String customerRegisterValidation(CustomerEntity customerEntity) {
		int result = customerDao.addUser(customerEntity);
		System.out.println("register result: " + result);
		return "OK";
	}
}
