package com.wfh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wfh.model.user;

public class userMapper implements RowMapper<user> {

	@Override
	public user mapRow(ResultSet rs, int rowNum) throws SQLException {
		String username = rs.getString("username");
		String password = rs.getString("password");
		int role_id = rs.getInt("role_id");
		return new user(username, password,role_id);
	}

}
