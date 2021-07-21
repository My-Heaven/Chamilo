package com.wfh.dao;


import com.wfh.model.user;

public interface userDAO {
	public user findUser(String username,String password);
    
     
}

