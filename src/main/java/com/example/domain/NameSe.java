package com.example.domain;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class NameSe {

	private String memoId;
	private String memoName;
	
	private Memo memo;

	public Memo getMemo() {
		return memo;
	}

	public void setMemo(Memo memo) {
		this.memo = memo;
	}
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
	public NameSe() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the memoId
	 */
	public String getMemoId() {
		return memoId;
	}

	/**
	 * @param value the memoId to set
	 */
	public NameSe setMemoId(final String value) {
		memoId = value;
		return this;
	}

	/**
	 * @return the memoName
	 */
	public String getMemoName() {
		return memoName;
	}

	/**
	 * @param value the memoName to set
	 */
	public NameSe setMemoName(final String value) {
		memoName = value;
		return this;
	}

}
