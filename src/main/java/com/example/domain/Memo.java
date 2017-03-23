package com.example.domain;


import java.util.Date;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Memo {

	private String memoId;
	private int memoNo;
	private int memoX;
	private int memoY;
	private String content;
	private Date memoDate;

	
	@Override
	public String toString() {
		String str= null;
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return str;
	}
	public Memo() {
		// TODO Auto-generated constructor stub
	}

	public String getMemoId() {
		return memoId;
	}

	public void setMemoId(String memoId) {
		this.memoId = memoId;
	}

	public int getMemoNo() {
		return memoNo;
	}

	public void setMemoNo(int memoNo) {
		this.memoNo = memoNo;
	}

	public int getMemoX() {
		return memoX;
	}

	public void setMemoX(int memoX) {
		this.memoX = memoX;
	}

	public int getMemoY() {
		return memoY;
	}

	public void setMemoY(int memoY) {
		this.memoY = memoY;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getMemoDate() {
		return memoDate;
	}

	public void setMemoDate(Date memoDate) {
		this.memoDate = memoDate;
	}

	
	}


