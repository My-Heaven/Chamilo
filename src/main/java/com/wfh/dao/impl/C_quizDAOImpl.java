package com.wfh.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.dao.C_quizDAO;

@Service
@Transactional
public class C_quizDAOImpl extends JdbcDaoSupport implements C_quizDAO {
	@Autowired
	public C_quizDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@Override
	public void createQuiz(int c_id, String title, boolean type, boolean stuff_answer, int random, int max_attempt,
			int expired_time) {
		// TODO Auto-generated method stub
		String sql = "insert into [dbo].[c_quiz] (c_id,title, type, stuff_answers, random, max_attempt, expired_time)\r\n"
				+ "values (?,?,?,?,?,?,?)";
		Object[] params = new Object[] { c_id, title, type, stuff_answer, random, max_attempt, expired_time };
		this.getJdbcTemplate().update(sql, params);
	}
}
