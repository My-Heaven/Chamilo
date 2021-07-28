package com.wfh.validator;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = CourseCodeValidator.class)
@Target({ElementType.FIELD, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface CourseCode {
	
	
	public String message() default "Invalid Format";
	public Class<?>[] groups() default {} ;
	public  Class<? extends Payload>[] payload() default {} ;
	
}
