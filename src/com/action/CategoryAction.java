package com.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.BlogCategory;
import com.pojo.DiaryCategory;
import com.pojo.EssayCategory;
import com.service.CategoryService;
import com.tools.Constants;

public class CategoryAction extends ActionSupport {
	CategoryService categoryService;
	
	int articleId;
	String articleTypes;
	String articleAttribute;
	
	List<BlogCategory> blogCategorys;
	List<EssayCategory> essayCategorys;
	List<DiaryCategory> diaryCategorys;
	
	
	public List<BlogCategory> getBlogCategorys() {
		return blogCategorys;
	}
	public void setBlogCategorys(List<BlogCategory> blogCategorys) {
		this.blogCategorys = blogCategorys;
	}
	public List<EssayCategory> getEssayCategorys() {
		return essayCategorys;
	}
	public void setEssayCategorys(List<EssayCategory> essayCategorys) {
		this.essayCategorys = essayCategorys;
	}
	public List<DiaryCategory> getDiaryCategorys() {
		return diaryCategorys;
	}
	public void setDiaryCategorys(List<DiaryCategory> diaryCategorys) {
		this.diaryCategorys = diaryCategorys;
	}
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
	
	public String addArticleTypes(){
		System.out.println("articleId = " + articleId + " articleTypes = " + articleTypes  + " articleAttribute =  " + articleAttribute);
		categoryService.addArticleTypes(articleId, articleTypes, articleAttribute);
		
		return articleAttribute;
	}
	
	public String findCategorys(){
		if (articleAttribute .equals(Constants.BLOG)) {
			this.setBlogCategorys(categoryService.findCategorys(Constants.BLOG));
		}else if(articleAttribute .equals(Constants.DIARY)){
		}else if(articleAttribute .equals(Constants.ESSAY)){
		}
		
	    return articleAttribute;
	}
}
