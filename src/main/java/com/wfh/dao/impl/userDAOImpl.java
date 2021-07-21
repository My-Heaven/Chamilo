package com.wfh.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.dao.userDAO;
import com.wfh.mapper.userMapper;
import com.wfh.model.user;
@Service
@Transactional
public class userDAOImpl extends JdbcDaoSupport implements userDAO{
	
	@Autowired
	public userDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@SuppressWarnings("deprecation")
	@Override
	public user findUser(String username, String password) {
		String sql = "select username, password, role_id from [dbo].[user] where username = ? and password = ? ";

		Object[] params = new Object[] { username, password };
		userMapper mapper = new userMapper();
		try {
			user userInfo = this.getJdbcTemplate().queryForObject(sql, params, mapper);
			return userInfo;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
}
