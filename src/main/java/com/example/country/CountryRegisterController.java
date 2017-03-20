package com.example.country;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.CityRegisterController;
import com.example.country.service.CountryRegisterService;
import com.example.country.service.CountrySearchService;

@Controller
@RequestMapping("/country")
public class CountryRegisterController {

	static Log log = LogFactory.getLog(CityRegisterController.class);
	
	@Autowired
	CountrySearchService countrySearchService;
	
	@Autowired
	CountryRegisterService countryRegisterService;
	
	
}
