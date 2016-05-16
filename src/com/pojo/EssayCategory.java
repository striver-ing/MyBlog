package com.pojo;

/**
 * EssayCategory entity. @author MyEclipse Persistence Tools
 */

public class EssayCategory implements java.io.Serializable {

	// Fields

	private Integer categoryId;
	private String essayId;
	private String essayType;

	// Constructors

	/** default constructor */
	public EssayCategory() {
	}

	/** full constructor */
	public EssayCategory(String essayId, String essayType) {
		this.essayId = essayId;
		this.essayType = essayType;
	}

	// Property accessors

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getEssayId() {
		return this.essayId;
	}

	public void setEssayId(String essayId) {
		this.essayId = essayId;
	}

	public String getEssayType() {
		return this.essayType;
	}

	public void setEssayType(String essayType) {
		this.essayType = essayType;
	}

}