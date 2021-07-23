package com.wfh.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.dao.UserDAO;
import com.wfh.mapper.UserMapper;
import com.wfh.model.User;
@Service
@Transactional
public class UserDAOImpl extends JdbcDaoSupport implements UserDAO{
	
	@Autowired
	public UserDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@SuppressWarnings("deprecation")
	@Override
	public User findUser(String username, String password) {
		String sql = "select id,username, password, role_id from [dbo].[user] where username = ? and password = ? ";

		Object[] params = new Object[] { username, password };
		UserMapper mapper = new UserMapper();
		try {
			User userInfo = this.getJdbcTemplate().queryForObject(sql, params, mapper);
			return userInfo;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
}
