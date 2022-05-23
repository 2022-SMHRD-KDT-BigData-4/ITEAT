package com.iteat.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class StudyBoard {
	private BigDecimal num;
	private String title;
	private String nick;
	private String content;
	private Timestamp regdate;
	private String recruit;
	private String region;
	private String stack;
	private BigDecimal hit;
	
	public StudyBoard(BigDecimal num, String title, String nick, String content, Timestamp regdate, String recruit,
			String region, String stack, BigDecimal hit) {
		super();
		this.num = num;
		this.title = title;
		this.nick = nick;
		this.content = content;
		this.regdate = regdate;
		this.recruit = recruit;
		this.region = region;
		this.stack = stack;
		this.hit = hit;
	}
	
	public StudyBoard(String title, String nick, String content, String recruit, String region, String stack) {
		super();
		this.title = title;
		this.nick = nick;
		this.content = content;
		this.recruit = recruit;
		this.region = region;
		this.stack = stack;
	}

	public StudyBoard(BigDecimal num, String title, String content, String recruit, String region, String stack) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.recruit = recruit;
		this.region = region;
		this.stack = stack;
	}

	public BigDecimal getNum() {
		return num;
	}
	public String getTitle() {
		return title;
	}
	public String getNick() {
		return nick;
	}
	public String getContent() {
		return content;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public String getRecruit() {
		return recruit;
	}
	public String getRegion() {
		return region;
	}
	public String getStack() {
		return stack;
	}
	public BigDecimal getHit() {
		return hit;
	}
	
	
}

