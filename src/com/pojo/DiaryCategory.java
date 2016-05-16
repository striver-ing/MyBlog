package com.pojo;

/**
 * DiaryCategory entity. @author MyEclipse Persistence Tools
 */

public class DiaryCategory implements java.io.Serializable {

	// Fields

	private Integer categoryId;
	private String diaryId;
	private String diaryType;

	// Constructors

	/** default constructor */
	public DiaryCategory() {
	}

	/** full constructor */
	public DiaryCategory(String diaryId, String diaryType) {
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

	public String getDiaryId() {
		return this.diaryId;
	}

	public void setDiaryId(String diaryId) {
		this.diaryId = diaryId;
	}

	public String getDiaryType() {
		return this.diaryType;
	}

	public void setDiaryType(String diaryType) {
		this.diaryType = diaryType;
	}

}