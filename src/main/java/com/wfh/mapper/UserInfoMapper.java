package com.wfh.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.wfh.model.UserInfo;

public class UserInfoMapper implements RowMapper<UserInfo>{

	@Override
	public UserInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String  code = rs.getString("code");
		String username = rs.getString("username");
		String password = rs.getString("password");
		String email = rs.getString("email");
		boolean enabled = rs.getBoolean("enabled");
		boolean expried = rs.getBoolean("expried");
		Date credentials_expired_at = rs.getDate("credentials_expired_at");
		String lastname = rs.getString("lastname");
		String firstname = rs.getString("firstname");
		String phone = rs.getString("phone");
		int role_id = rs.getInt("role_id");
		String image = rs.getString("image");
		Date created_at= rs.getDate("created_at");
		return new UserInfo(id,code,username,password,email,enabled,expried,credentials_expired_at,lastname,firstname,phone,role_id,image,created_at);
	}

}
