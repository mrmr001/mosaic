package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Memo;

@Mapper
public interface MemoMapper {

	@Select("select count(*) from memo")
	int selectTotalCount();
	
	
	List<Memo> selectAll();	
	
	
	List<Memo> selectAllWithId();
	
	
}
