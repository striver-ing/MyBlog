package com.action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Blog;
import com.pojo.BlogCategory;
import com.pojo.DiaryCategory;
import com.pojo.EssayCategory;
import com.service.CategoryService;
import com.tools.Constants;

public class CategoryAction extends ActionSupport {
	CategoryService categoryService;
	
	int articleId;
	int categoryId;
	String articleTypes; //多个分类 逗号隔开 如java，c++ 用于添加
	String articleAttribute; //分类属性 博客 日记 或者 碎言碎语
	String articleType; //单个分类  用于删除和编辑
	
	
	List<BlogCategory> blogCategorys;
	List<EssayCategory> essayCategorys;
	List<DiaryCategory> diaryCategorys;
	
	BlogCategory blogCategory;
	EssayCategory essayCategory;
	DiaryCategory diaryCategory;
	
	List<Blog> blogs;
	List<Blog> diarys;
	List<Blog> essays;
	
	
	public List<Blog> getDiarys() {
		return diarys;
	}
	public void setDiarys(List<Blog> diarys) {
		this.diarys = diarys;
	}
	public List<Blog> getEssays() {
		return essays;
	}
	public void setEssays(List<Blog> essays) {
		this.essays = essays;
	}
	public List<Blog> getBlogs() {
		return blogs;
	}
	public void setBlogs(List<Blog> blogs) {
		this.blogs = blogs;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public BlogCategory getBlogCategory() {
		return blogCategory;
	}
	public void setBlogCategory(BlogCategory blogCategory) {
		this.blogCategory = blogCategory;
	}
	public EssayCategory getEssayCategory() {
		return essayCategory;
	}
	public void setEssayCategory(EssayCategory essayCategory) {
		this.essayCategory = essayCategory;
	}
	public DiaryCategory getDiaryCategory() {
		return diaryCategory;
	}
	public void setDiaryCategory(DiaryCategory diaryCategory) {
		this.diaryCategory = diaryCategory;
	}
	public String getArticleType() {
		return articleType;
	}
	public void setArticleType(String articleType) {
		this.articleType = articleType;
	}
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
	
	//查找所有分类 并将其存到session中
	public String findAllCategorys(){
		this.setBlogCategorys(categoryService.findCategorys(Constants.BLOG));
		this.setDiaryCategorys(categoryService.findCategorys(Constants.DIARY));
		this.setEssayCategorys(categoryService.findCategorys(Constants.ESSAY));
		
		Map session = (Map)ActionContext.getContext().get("session");
		session.put(Constants.BLOG_CATEGORYS, blogCategorys);
		session.put(Constants.DIARY_CATEGORYS, diaryCategorys);
		session.put(Constants.ESSAY_CATEGORYS, essayCategorys);
		
		return articleAttribute;
	}
	
	public String deleteCategoryByArticleType(){
		categoryService.deleteCategoryByArticleType(articleType, articleAttribute);
		return articleAttribute;
	}
	
	public String findCategoryByCategoryId(){
		if (articleAttribute .equals(Constants.BLOG)) {
			this.setBlogCategory((BlogCategory)categoryService.findCategoryByCategoryId(categoryId, articleAttribute));
		}else if(articleAttribute .equals(Constants.DIARY)){
		}else if(articleAttribute .equals(Constants.ESSAY)){
		}
		return articleAttribute;
	}
	
	public String updateCategory(){
		if (articleAttribute .equals(Constants.BLOG)) {
			categoryService.updateCategory(blogCategory, articleAttribute);
		}else if(articleAttribute .equals(Constants.DIARY)){
		}else if(articleAttribute .equals(Constants.ESSAY)){
		}
		return articleAttribute;
	}
	
	public String findArticlesByArticleType(){	
		Map session = (Map)ActionContext.getContext().get("session");
		if (articleAttribute .equals(Constants.BLOG)) {
			this.setBlogs(categoryService.findArticlesByArticleType(categoryId, articleAttribute));
			//把博客存到session中 以便分页
			session.put(Constants.BLOGS, blogs);
		}else if(articleAttribute .equals(Constants.DIARY)){
			this.setDiarys(categoryService.findArticlesByArticleType(categoryId, articleAttribute));
			//把日记存到session中 以便分页 没写分页 先在一页全部展示
			//session.put(Constants.DIARYS, blogs);
		}else if(articleAttribute .equals(Constants.ESSAY)){
			this.setEssays(categoryService.findArticlesByArticleType(categoryId, articleAttribute));
			//把日记存到session中 以便分页 没写分页 先在一页全部展示
			//session.put(Constants.ESSAYS, blogs);
		}
		return articleAttribute;
	}
}
