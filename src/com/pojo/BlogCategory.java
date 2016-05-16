package com.pojo;

/**
 * BlogCategory entity. @author MyEclipse Persistence Tools
 */

public class BlogCategory implements java.io.Serializable {

	// Fields

	private Integer categoryId;
	private Integer blogId;
	private String blogType;

	// Constructors

	/** default constructor */
	public BlogCategory() {
	}

	/** minimal constructor */
	public BlogCategory(Integer blogId) {
		this.blogId = blogId;
	}

	/** full constructor */
	public BlogCategory(Integer blogId, String blogType) {
		this.blogId = blogId;
		this.blogType = blogType;
	}

	// Property accessors

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getBlogId() {
		return this.blogId;
	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	public String getBlogType() {
		return this.blogType;
	}

	public void setBlogType(String blogType) {
		this.blogType = blogType;
	}

}