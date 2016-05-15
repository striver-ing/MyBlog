package com.pojo;

/**
 * Category entity. @author MyEclipse Persistence Tools
 */

public class Category implements java.io.Serializable {

	// Fields

	private Integer categoryId;
	private Integer articleId;
	private String articleType;

	// Constructors

	/** default constructor */
	public Category() {
	}

	/** minimal constructor */
	public Category(Integer articleId) {
		this.articleId = articleId;
	}

	/** full constructor */
	public Category(Integer articleId, String articleType) {
		this.articleId = articleId;
		this.articleType = articleType;
	}

	// Property accessors

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getArticleId() {
		return this.articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public String getArticleType() {
		return this.articleType;
	}

	public void setArticleType(String articleType) {
		this.articleType = articleType;
	}

}