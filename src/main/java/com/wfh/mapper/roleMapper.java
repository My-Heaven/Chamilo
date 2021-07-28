package com.wfh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wfh.model.role;

public class roleMapper implements RowMapper<role> {
	
	public static final String BASE_SQL = //
            "select u.id,u.name from role u";
	@Override
	public role mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		return new role(id, name);
	}

}
