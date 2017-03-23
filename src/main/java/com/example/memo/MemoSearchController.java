package com.example.memo;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Memo;
import com.example.memo.service.MemoSearchService;

@Controller
@RequestMapping("/memo")
public class MemoSearchController {
	
	static Log log = LogFactory.getLog(MemoSearchController.class);
	@Autowired
	MemoSearchService memoSearchService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		log.info("getList()");
		
		List<Memo> list = memoSearchService.getListAll(false);
		model.addAttribute("memos", list);
		
		return "memo/list";
	}
//	
//	@GetMapping("/page/{pageNo}")
//	public String getPage(@PathVariable int pageNo, Model model) {
//		log.info("getPage(" + pageNo + ")");
//		
//		Map<String, Object> page = citySearchService.getPage(pageNo);
//		model.addAttribute("page", page);
//		
//		return "city/page";
//	}
//	
//	@GetMapping("/item/{id}")
//	public String getItemById(@PathVariable int id, Model model) {
//		log.info("getItem("+ id + ")");
//		
//		City city = citySearchService.getCityById(id, true);
//		model.addAttribute("city", city);
//		
//		return "city/item";
//	}
	

}
