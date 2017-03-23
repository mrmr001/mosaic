package com.example.memo.service;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Memo;
import com.example.mapper.MemoMapper;

@Service
public class MemoSearchService {
	static Log log = LogFactory.getLog(MemoSearchService.class);
	
	@Autowired
	MemoMapper memoMapper;
	
	public List<Memo> getListAll() {
		log.info("getListAllrrr()");
		return getListAll(false);
	}
	
	public List<Memo> getListAll(boolean withId) {
		log.info("getListAll(" + withId + ")");
		List<Memo> list=null;
		if (withId)
			list = memoMapper.selectAllWithId();
		else
			list = memoMapper.selectAll();
		return list;
	}
	
//	public Map<String, Object> getPage(int pageNo) {
//		return getPage(pageNo, false);
//	}
//	
//	public Map<String, Object> getPage(int pageNo, boolean withCountry) {
//		Pagination paging = new Pagination();
//		paging.setTotalItem(cityMapper.selectTotalCount());
//		paging.setPageNo(pageNo);
//		
//		List<City> list=null;
//		if (withCountry)
//			list = cityMapper.selectPageWithCountry(paging);
//		else
//			list = cityMapper.selectPage(paging);
//		
//		Map<String, Object> map = new HashMap<>();
//		map.put("citys", list);
//		map.put("paging", paging);
//		
//		return map;
//	}
//	
//	
//	public City getCityById(int id) {
//		log.info("getCityById(" + id + ")");
//		return getCityById(id, false);
//	}
//	public City getCityById(int id, boolean withCountry) {
//		log.info("getCityById(" + id + ", " + withCountry + ")");
//		City city=null;
//		if (withCountry)
//			city = cityMapper.selectByIdWithCountry(id);
//		else
//			city = cityMapper.selectById(id);
//		
//		return city;
//	}
	
	

}
