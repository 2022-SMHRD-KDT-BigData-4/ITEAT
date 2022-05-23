package com.iteat.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class SBComment {
	private BigDecimal cmnum;
	private BigDecimal sbnum;
	private String content;
	private Timestamp date;
	private String nick;
	private BigDecimal like;
	
	public SBComment(BigDecimal cmnum, BigDecimal sbnum, String content, Timestamp date, String nick, BigDecimal like) {
		super();
		this.cmnum = cmnum;
		this.sbnum = sbnum;
		this.content = content;
		this.date = date;
		this.nick = nick;
		this.like = like;
	}

	public BigDecimal getCmnum() {
		return cmnum;
	}

	public BigDecimal getSbnum() {
		return sbnum;
	}

	public String getContent() {
		return content;
	}

	public Timestamp getDate() {
		return date;
	}

	public String getNick() {
		return nick;
	}

	public BigDecimal getLike() {
		return like;
	}
	
	
}
