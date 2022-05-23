package com.iteat.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class SeaCode {
	private BigDecimal code_seq;
	private String code_title;
	private String code_content;
	private Timestamp code_date;
	private String code_nick;
	private String code_lang;
	
	
	public SeaCode(BigDecimal code_seq, String code_title, String code_content, Timestamp code_date, String code_nick,
			 String code_lang) {
		super();
		this.code_seq = code_seq;
		this.code_title = code_title;
		this.code_content = code_content;
		this.code_date = code_date;
		this.code_nick = code_nick;
		this.code_lang = code_lang;
	}
	
	
	
	
	
	public SeaCode(String code_title, String code_content, Timestamp code_date, String code_lang) {
		super();
		this.code_title = code_title;
		this.code_content = code_content;
		this.code_date = code_date;
		this.code_lang = code_lang;
	}





	public BigDecimal getcode_seq() {
		return code_seq;
	}
	public String getcode_title() {
		return code_title;
	}
	public String getcode_content() {
		return code_content;
	}
	public String getcode_nick() {
		return code_nick;
	}
	public Timestamp getcode_date() {
		return code_date;
	}
	public String getcode_lang() {
		return code_lang;
	}
	
	
}
