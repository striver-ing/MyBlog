package com.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Blog;
import com.service.BlogService;
import com.sun.corba.se.impl.orbutil.closure.Constant;
import com.tools.Constants;

public class BlogAction extends ActionSupport{
	Blog blog;
	List<Blog> blogs;
	BlogService blogService;
	int blogId;
	int userId;
	String keyword;
	
	int articleId;  //文章id
	String articleTypes; //以逗号分割多个type 文章分类
	String articleAttribute; //文章属性  属于博客

	
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	public String getArticleAttribute() {
		return articleAttribute;
	}
	public void setArticleAttribute(String articleAttribute) {
		this.articleAttribute = articleAttribute;
	}

	public Blog getBlog() {
		return blog;
	}
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public List<Blog> getBlogs() {
		return blogs;
	}
	public void setBlogs(List<Blog> blogs) {
		this.blogs = blogs;
	}
	public BlogService getBlogService() {
		return blogService;
	}
	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}
	
	
	//-------------------------------------
	
	public String addBlog(){
		Blog blog_ = blogService.addBlog(blog);
		this.setArticleId(blog_.getBlogId());
		this.setArticleAttribute(Constants.BLOG);
		this.setArticleTypes(articleTypes);
		return SUCCESS;
	}
	
	//按日期由近到远排序
	public String findAllBlog(){
		this.setBlogs(blogService.findBlogs("order by date DESC"));
		//把博客存到session中 以便分页
		Map session = (Map)ActionContext.getContext().get("session");
		session.put(Constants.BLOGS, blogs);
		this.setArticleAttribute(Constants.BLOG);
		return SUCCESS;
	}
	
	//查找热门博客
	public String findHotBlog(){
		this.setBlogs(blogService.findBlogs("order by readedCount DESC limit 5"));//limit 50  取50条记录
		this.setArticleAttribute(Constants.BLOG);
		return SUCCESS;
	}
	
	//模糊查询博客
	public String findBlogByKeyword(){
		this.setBlogs(blogService.findBlogs("where title like'%"+keyword+"%'"));
		Map session = (Map)ActionContext.getContext().get("session");
		session.put(Constants.BLOGS, blogs);
		return SUCCESS;
	}
	
	public String readBlog(){
		this.setBlog(blogService.readBlog(blogId));
		return SUCCESS;
	}
	
	public String deleteBlogByBlogId(){
		blogService.deleteBlogByBlogId(blogId);
		return SUCCESS;
	}
	
	public String updateBlogPre(){
		this.setBlog(blogService.findBlogByBlogId(blogId));
		return SUCCESS;
	}
	
	public String updateBlog(){
		blogService.updateBlog(blog);
		return SUCCESS;
	}

}
