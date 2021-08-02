package com.wfh.dao;

import java.sql.Date;
import java.util.List;

import com.wfh.model.C_quiz;

public interface C_quizDAO {
	public void createQuiz(int c_id, String title, boolean type, boolean stuff_answer, int random, String statrt_time, String end_time, int max_attempt,
			int expired_time);
	public List<C_quiz> getListC_Quiz();
	public List<C_quiz> findListC_QuizByID(String id);
}
