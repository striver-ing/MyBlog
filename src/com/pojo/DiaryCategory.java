package com.pojo;

/**
 * DiaryCategory entity. @author MyEclipse Persistence Tools
 */

public class DiaryCategory implements java.io.Serializable {

	// Fields

	private Integer categoryId;
	private Integer diaryId;
	private String diaryType;

	// Constructors

	/** default constructor */
	public DiaryCategory() {
	}

	/** full constructor */
	public DiaryCategory(Integer diaryId, String diaryType) {
		this.diaryId = diaryId;
		this.diaryType = diaryType;
	}

	// Property accessors

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getDiaryId() {
		return this.diaryId;
	}

	public void setDiaryId(Integer diaryId) {
		this.diaryId = diaryId;
	}

	public String getDiaryType() {
		return this.diaryType;
	}

	public void setDiaryType(String diaryType) {
		this.diaryType = diaryType;
	}

}