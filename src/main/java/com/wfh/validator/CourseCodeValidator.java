package com.wfh.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeValidator implements ConstraintValidator<CourseCode, String> {

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub

		if (value != null) {
			if (!value.matches("[a-zA-Z0-9]+")) {
				return false;
			}
		}

		return true;
	}

}
