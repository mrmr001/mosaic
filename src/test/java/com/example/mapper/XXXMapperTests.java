package com.example.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.domain.Memo;
import com.example.domain.XXX;


@RunWith(SpringRunner.class)
@SpringBootTest
public class XXXMapperTests {
	
	@Autowired
	XXXMapper mapper;
	
	
	
	@Test
	public void test00_confirmCityMapper() {
		System.out.println("memoapper=" + mapper);
	}

	@Test
	public void test01_selectAll() {
		List<XXX> list = mapper.selectAll();
		
		for (XXX c : list)
			System.out.println(c);
	}
	
}








