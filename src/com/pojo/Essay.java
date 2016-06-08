package com.pojo;

/**
 * Essay entity. @author MyEclipse Persistence Tools
 */

public class Essay implements java.io.Serializable {

	// Fields

	private Integer essayId;
	private Integer userId;
	private String date;
	private String essayContent;

	// Constructors

	/** default constructor */
	public Essay() {
	}

	/** full constructor */
	public Essay(Integer userId, String date, String essayContent) {
		this.userId = userId;
		this.date = date;
		this.essayContent = essayContent;
	}

	// Property accessors

	public Integer getEssayId() {
		return this.essayId;
	}

	public void setEssayId(Integer essayId) {
		this.essayId = essayId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEssayContent() {
		return this.essayContent;
	}

	public void setEssayContent(String essayContent) {
		this.essayContent = essayContent;
	}

}