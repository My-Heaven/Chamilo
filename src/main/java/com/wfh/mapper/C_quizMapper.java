package com.wfh.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wfh.model.C_quiz;

public class C_quizMapper implements RowMapper<C_quiz> {

	@Override
	public C_quiz mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		int id = rs.getInt("id");
		int c_id = rs.getInt("c_id");
		String title = rs.getString("title");
		boolean type = rs.getBoolean("type");
		boolean stuff_answer = rs.getBoolean("stuff_answer");
		int random = rs.getInt("random");
		Date start_time = rs.getDate("start_time");
		Date end_time = rs.getDate("end_time");
		String description = rs.getString("description");
		boolean active = rs.getBoolean("active");
		int max_attempt = rs.getInt("max_attempt");
		int expired_time = rs.getInt("expired_time");
		return new C_quiz(id, c_id, title, type, stuff_answer, random, start_time, end_time, description, active, max_attempt, expired_time);
	}

}
