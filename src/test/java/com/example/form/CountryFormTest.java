package com.example.form;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.domain.City;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CountryFormTest {

	@Autowired
	Validator validator;
	
	@Test
	public void test_confirm() {
		System.out.println("validator=" + validator);
	}
	
	@Test
	public void test_getName() {
		CountryForm countryForm = new CountryForm();
		countryForm.setCode("XYZZ");
		BindingResult err = new BeanPropertyBindingResult(countryForm, "countryForm");
		 validator.validate(countryForm, err);
	if (err.hasErrors()){
		System.out.println("err = "+ err);
		return;
	}
		System.out.println("유효");
	}
	
	@Test
	public void test_getCountryCode() {
		CountryForm countryForm = new CountryForm();
		countryForm.setCode("XYZZ");
			BindingResult err = new BeanPropertyBindingResult(countryForm, "countryForm");
			validator.validate(countryForm, err);
			if(err.hasErrors()) {
				System.out.println("err = "+ err);
				return;
			}
			System.out.println("유효");
	}
}
