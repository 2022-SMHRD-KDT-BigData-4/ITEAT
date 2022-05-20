package com.iteat.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Message {
	private BigDecimal msg_seq;
	private String msg_sender;
	private String msg_receiver;
	private String msg_title;
	private String msg_content;
	private Timestamp msg_date;
	private String msg_snick;
	private String msg_rnick;
	
	public Message(BigDecimal msg_seq, String msg_sender, String msg_receiver, String msg_title, String msg_content,
			Timestamp msg_date, String msg_snick, String msg_rnick) {
		super();
		this.msg_seq = msg_seq;
		this.msg_sender = msg_sender;
		this.msg_receiver = msg_receiver;
		this.msg_title = msg_title;
		this.msg_content = msg_content;
		this.msg_date = msg_date;
		this.msg_snick = msg_snick;
		this.msg_rnick = msg_rnick;
	}

	public Message(String msg_sender, String msg_receiver, String msg_title, String msg_content, String msg_snick,
			String msg_rnick) {
		super();
		this.msg_sender = msg_sender;
		this.msg_receiver = msg_receiver;
		this.msg_title = msg_title;
		this.msg_content = msg_content;
		this.msg_snick = msg_snick;
		this.msg_rnick = msg_rnick;
	}

	public BigDecimal getMsg_seq() {
		return msg_seq;
	}

	public String getMsg_sender() {
		return msg_sender;
	}

	public String getMsg_receiver() {
		return msg_receiver;
	}

	public String getMsg_title() {
		return msg_title;
	}

	public String getMsg_content() {
		return msg_content;
	}

	public Timestamp getMsg_date() {
		return msg_date;
	}

	public String getMsg_snick() {
		return msg_snick;
	}

	public String getMsg_rnick() {
		return msg_rnick;
	}
	
	
}
