package com.wfh.dao;


public interface C_quizDAO {
	public void createQuiz(int c_id, String title, boolean type, boolean stuff_answer, int random, int max_attempt,
			int expired_time);
}
