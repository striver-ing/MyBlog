package com.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Category;
import com.service.CategoryService;

public class CategoryAction extends ActionSupport {
	CategoryService categoryService;
	Category categoty;
	int articleId;
	String articleTypes;
	String articleAttribute;
	
	public String getArticleAttribute() {
		return articleAttribute;
	}
	public void setArticleAttribute(String articleAttribute) {
		this.articleAttribute = articleAttribute;
	}
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getArticleTypes() {
		return articleTypes;
	}
	public void setArticleTypes(String articleTypes) {
		this.articleTypes = articleTypes;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public Category getCategoty() {
		return categoty;
	}
	public void setCategoty(Category categoty) {
		this.categoty = categoty;
	}
	
	public String addArticleTypes(){
		System.out.println("articleId = " + articleId + " articleTypes = " + articleTypes  + " articleAttribute =  " + articleAttribute);
		categoryService.addArticleTypes(articleId, articleTypes, articleAttribute);
		
		return SUCCESS;
	}
}
