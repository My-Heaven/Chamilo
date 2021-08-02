package com.wfh.dao.impl;

import java.sql.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.dao.C_quizDAO;
import com.wfh.mapper.C_quizMapper;
import com.wfh.mapper.UserInfoMapper;
import com.wfh.model.C_quiz;
import com.wfh.model.UserInfo;

@Service
@Transactional
public class C_quizDAOImpl extends JdbcDaoSupport implements C_quizDAO {
	@Autowired
	public C_quizDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@Override
	public void createQuiz(int c_id, String title, boolean type, boolean stuff_answer, int random,String start_time, String end_time, int max_attempt,
			int expired_time) {
		// TODO Auto-generated method stub
		String sql = "insert into [dbo].[c_quiz] (c_id,title, type, stuff_answers, random,start_time, end_time, max_attempt, expired_time)\r\n"
				+ "values (?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] { c_id, title, type, stuff_answer, random,start_time,end_time, max_attempt, expired_time };
		this.getJdbcTemplate().update(sql, params);
	}

	@Override
	public List<C_quiz> getListC_Quiz() {
		String sql = "select * from [dbo].[c_quiz]";
		Object[] params = new Object[] {};
		C_quizMapper mapper = new C_quizMapper();
		List<C_quiz> list = this.getJdbcTemplate().query(sql, params, mapper);
		return list;
	}

	@Override
	public List<C_quiz> findListC_QuizByID(String id) {
		String sql = "select * from [dbo].[c_quiz] where [id] like ?";
		Object[] params = new Object[] { "%" + id + "%" };
		C_quizMapper mapper = new C_quizMapper();
		List<C_quiz> list = this.getJdbcTemplate().query(sql, params, mapper);
		return list;
	}
}
