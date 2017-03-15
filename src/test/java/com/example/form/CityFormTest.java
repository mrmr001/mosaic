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
public class CityFormTest {

	@Autowired
	Validator validator;
	
	@Test
	public void test_confirm() {
		System.out.println("validator=" + validator);
	}
	
	@Test
	public void test_getName() {
		CityForm cityForm = new CityForm();
		cityForm.setName("xxxccccccRRRRRRRRRRRRRRRRrrrrrrrrrrrrrrcccccccccccccccccccc");
		BindingResult err = new BeanPropertyBindingResult(cityForm, "cityForm");
		 validator.validate(cityForm, err);
	if (err.hasErrors()){
		System.out.println("err = "+ err);
		return;
	}
		System.out.println("유효");
	}
	
	@Test
	public void test_getCountryCode() {
			CityForm cityForm = new CityForm();
			cityForm.setName("RRRR");
			cityForm.setCountryCode("YYY");
			BindingResult err = new BeanPropertyBindingResult(cityForm, "cityForm");
			validator.validate(cityForm, err);
			if(err.hasErrors()) {
				System.out.println("err = "+ err);
				return;
			}
			System.out.println("유효");
	}
}
