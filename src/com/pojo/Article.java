package com.pojo;

/**
 * Article entity. @author MyEclipse Persistence Tools
 */

public class Article implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private String title;
	private String content;
	private String abstract_;
	private String classify;
	private String date;
	private Integer readedCount;
	private Integer commentCount;

	// Constructors

	/** default constructor */
	public Article() {
	}

	/** minimal constructor */
	public Article(String title, String content) {
		this.title = title;
		this.content = content;
	}

	/** full constructor */
	public Article(Integer userId, String title, String content,
			String abstract_, String classify, String date,
			Integer readedCount, Integer commentCount) {
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.abstract_ = abstract_;
		this.classify = classify;
		this.date = date;
		this.readedCount = readedCount;
		this.commentCount = commentCount;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAbstract_() {
		return this.abstract_;
	}

	public void setAbstract_(String abstract_) {
		this.abstract_ = abstract_;
	}

	public String getClassify() {
		return this.classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getReadedCount() {
		return this.readedCount;
	}

	public void setReadedCount(Integer readedCount) {
		this.readedCount = readedCount;
	}

	public Integer getCommentCount() {
		return this.commentCount;
	}

	public void setCommentCount(Integer commentCount) {
		this.commentCount = commentCount;
	}

}