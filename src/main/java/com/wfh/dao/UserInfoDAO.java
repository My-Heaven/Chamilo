package com.wfh.dao;

import java.util.List;

import com.wfh.model.UserInfo;

public interface UserInfoDAO {
	public void createUser(String code, String username, String password, String email, String lastname,
			String firstname, String phone, String role_id);

	public List<UserInfo> searchUserById(String id);

	public UserInfo findUserById(int id);

	public void updateUserById(String username, String password, String email, String lastname, String firstname,
			String role_id, String id);

	public void deleteUser(int id);

	public List<UserInfo> getListUser();
}
