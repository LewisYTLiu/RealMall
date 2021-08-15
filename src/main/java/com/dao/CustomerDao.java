package com.dao;

import org.apache.ibatis.annotations.Mapper;
import com.entity.CustomerEntity;


@Mapper
public interface CustomerDao {

	int addUser(CustomerEntity user);
	int updateUser(CustomerEntity user);
	String returnPasswordByName(String username);
}