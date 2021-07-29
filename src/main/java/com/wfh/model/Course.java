package com.wfh.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import com.wfh.validator.CourseCode;
import org.hibernate.annotations.ColumnDefault;

@Entity
@Table(name="Course")
public class Course {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="code")
	@NotBlank(message = "is required")
	@CourseCode(message = "Only letters (a-z) and numbers	(0-9)")
	private String code;
	
	@Column(name="title")
	@NotBlank(message = "is required")
	private String title;
	
	@Column(name="description")
	private String description;
	
	@Column(name="creation_date")
	private Date creation_date ;
	
	@Column(name="category_id")
	private int category_id;
	
	@Column(name="u_id")
	private int u_id;

	@Column(name = "status")
	private Boolean status = true;

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreation_date() {
		return creation_date;
	}

	public void setCreation_date(Date creation_date) {
		this.creation_date = creation_date;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	
	
	
}
	
	
