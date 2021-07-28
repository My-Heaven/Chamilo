package com.wfh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wfh.model.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String username = rs.getString("username");
		String password = rs.getString("password");
		int role_id = rs.getInt("role_id");
		return new User(id,username, password,role_id);
	}

}
