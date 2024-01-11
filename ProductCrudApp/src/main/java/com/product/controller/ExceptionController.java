package com.product.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


public class ExceptionController {

	@ExceptionHandler(value = Exception.class)
	public String exception() {
		return "error_page";
	}
}
