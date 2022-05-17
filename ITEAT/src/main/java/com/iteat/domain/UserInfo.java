package com.iteat.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class UserInfo {
	private String uif_id;
	private String uif_pw;
	private String uif_nick;
	private Timestamp date;
	private BigDecimal uif_level;
	private String uif_stack;
	private String uif_blog;
	private String uif_edu;
	private String uif_etc;
	private String uif_type;
	
	public UserInfo(String uif_id, String uif_pw, String uif_nick, Timestamp date, BigDecimal uif_level, String uif_stack,
			String uif_blog, String uif_edu, String uif_etc, String uif_type) {
		super();
		this.uif_id = uif_id;
		this.uif_pw = uif_pw;
		this.uif_nick = uif_nick;
		this.date = date;
		this.uif_level = uif_level;
		this.uif_stack = uif_stack;
		this.uif_blog = uif_blog;
		this.uif_edu = uif_edu;
		this.uif_etc = uif_etc;
		this.uif_type = uif_type;
	}
	
	

	public UserInfo(String uif_id, String uif_pw, String uif_nick, String uif_stack, String uif_blog, String uif_edu,
			String uif_etc) {
		super();
		this.uif_id = uif_id;
		this.uif_pw = uif_pw;
		this.uif_nick = uif_nick;
		this.uif_stack = uif_stack;
		this.uif_blog = uif_blog;
		this.uif_edu = uif_edu;
		this.uif_etc = uif_etc;
	}



	public UserInfo(String uif_id, String uif_pw) {
		super();
		this.uif_id = uif_id;
		this.uif_pw = uif_pw;
	}



	public String getUif_id() {
		return uif_id;
	}

	public String getUif_pw() {
		return uif_pw;
	}

	public String getUif_nick() {
		return uif_nick;
	}

	public Timestamp getDate() {
		return date;
	}

	public BigDecimal getUif_level() {
		return uif_level;
	}

	public String getUif_stack() {
		return uif_stack;
	}

	public String getUif_blog() {
		return uif_blog;
	}

	public String getUif_edu() {
		return uif_edu;
	}

	public String getUif_etc() {
		return uif_etc;
	}

	public String getUif_type() {
		return uif_type;
	}
}
