package com.pojo;

/**
 * EssayCategory entity. @author MyEclipse Persistence Tools
 */

public class EssayCategory implements java.io.Serializable {

	// Fields

	private Integer categoryId;
	private Integer essayId;
	private String essayType;

	// Constructors

	/** default constructor */
	public EssayCategory() {
	}

	/** full constructor */
	public EssayCategory(Integer essayId, String essayType) {
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

	public Integer getEssayId() {
		return this.essayId;
	}

	public void setEssayId(Integer essayId) {
		this.essayId = essayId;
	}

	public String getEssayType() {
		return this.essayType;
	}

	public void setEssayType(String essayType) {
		this.essayType = essayType;
	}

}