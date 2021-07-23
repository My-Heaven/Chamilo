package com.wfh.dao;


import com.wfh.model.User;

public interface UserDAO {
	public User findUser(String username,String password);
    
     
}

