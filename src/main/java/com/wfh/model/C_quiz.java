package com.wfh.model;

import java.sql.Date;

public class C_quiz {
	private int id;
	private int c_id;
	private String title;
	private boolean type;
	private boolean stuff_answer;
	private int random;
	private String start_time;
	private String end_time;
	private String description;
	private boolean active;
	private int max_attempt;
	private int expired_time;
	
	public C_quiz() {
	}

	public C_quiz(int id, int c_id, String title, boolean type, boolean stuff_answer, int random, String start_time,
			String end_time, String description, boolean active, int max_attempt, int expired_time) {
		super();
		this.id = id;
		this.c_id = c_id;
		this.title = title;
		this.type = type;
		this.stuff_answer = stuff_answer;
		this.random = random;
		this.start_time = start_time;
		this.end_time = end_time;
		this.description = description;
		this.active = active;
		this.max_attempt = max_attempt;
		this.expired_time = expired_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean isType() {
		return type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	public boolean isStuff_answer() {
		return stuff_answer;
	}

	public void setStuff_answer(boolean stuff_answer) {
		this.stuff_answer = stuff_answer;
	}

	public int getRandom() {
		return random;
	}

	public void setRandom(int random) {
		this.random = random;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getMax_attempt() {
		return max_attempt;
	}

	public void setMax_attempt(int max_attempt) {
		this.max_attempt = max_attempt;
	}

	public int getExpired_time() {
		return expired_time;
	}

	public void setExpired_time(int expired_time) {
		this.expired_time = expired_time;
	}
	
	
}
