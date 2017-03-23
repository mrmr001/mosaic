package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Memo;
import com.example.domain.XXX;

@Mapper
public interface XXXMapper {

	@Select("select * from xxx")
	List<XXX> selectAll();	
	
}
