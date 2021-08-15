package com.entity;

import org.springframework.stereotype.Component;

// @Data , auto provide setter and getter, but lombok plugin needed
// @TableName("customer")
@Component
public class CustomerEntity {
    // @TableId  //主键
    private String username;
    private String passwd;
    private String tel;
	private String address;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
