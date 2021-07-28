package com.wfh.model;

import java.sql.Date;

public class UserInfo {
	private int id;
	private String  code; 
	private String username; 
	private String password; 
	private String email; 
	private boolean enabled; 
	private boolean expried;
	private Date credentials_expired_at;
	private String lastname ;
	private String firstname ;
	private String phone ;
	private int role_id ;
	private String image; 
	private Date created_at;
	
	public UserInfo() {
		// TODO Auto-generated constructor stub
	}

	public UserInfo(int id, String code, String username, String password, String email, boolean enabled,
			boolean expried, Date credentials_expired_at, String lastname, String firstname, String phone, int role_id,
			String image, Date created_at) {
		super();
		this.id = id;
		this.code = code;
		this.username = username;
		this.password = password;
		this.email = email;
		this.enabled = enabled;
		this.expried = expried;
		this.credentials_expired_at = credentials_expired_at;
		this.lastname = lastname;
		this.firstname = firstname;
		this.phone = phone;
		this.role_id = role_id;
		this.image = image;
		this.created_at = created_at;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public boolean isExpried() {
		return expried;
	}

	public void setExpried(boolean expried) {
		this.expried = expried;
	}

	public Date getCredentials_expired_at() {
		return credentials_expired_at;
	}

	public void setCredentials_expired_at(Date credentials_expired_at) {
		this.credentials_expired_at = credentials_expired_at;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
}
