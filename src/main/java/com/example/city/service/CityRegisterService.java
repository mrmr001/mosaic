package com.example.city.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.City;
import com.example.domain.Country;
import com.example.mapper.CityMapper;
import com.example.mapper.CountryMapper;

 
	 @Service
	  public class CityRegisterService {
	  
	 	@Autowired
	 	CityMapper cityMapper;
	 	
	 	@Autowired
	 	CountryMapper countryMapper;
	 	
	 	public void register(City city, BindingResult errors)  {
	 		
	 		if (city.getCountryCode() != null) {
	 			Country country = countryMapper.selectByCode(city.getCountryCode());
	 			if (country == null)
	 				errors.reject("InvalidCountryCode", "유효한 Country Code가 아닙니다.");
	 		}
	 		
	 		if (!errors.hasErrors())
	 			cityMapper.insert(city);
	 	}
	 	
	 	
	 	
	  }

