package com.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Article;
import com.service.ArticleService;
import com.tools.Constants;

public class ArticleAction extends ActionSupport{
	Article article;
	List<Article> articles;
	ArticleService articleService;
	String articleTypes; //以逗号分割多个type
	int articleId;
	int userId;
	public String getArticleTypes() {
		return articleTypes;
	}
	public void setArticleTypes(String articleTypes) {
		this.articleTypes = articleTypes;
	}
	public Article getArticle() {
		return article;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	
	//-------------------------------------
	
	public String addArticle(){
		Article article_ = articleService.addArticle(article);
		this.setArticleId(article_.getArticleId());
		System.out.println("articleTypes = " + articleTypes);
		return SUCCESS;
	}
	
	//按日期由近到远排序
	public String findAllArticle(){
		this.setArticles(articleService.findArticles("order by date DESC"));
		//把博客存到session中 以便分页
		Map session = (Map)ActionContext.getContext().get("session");
		session.put(Constants.BLOGS, articles);

		return SUCCESS;
	}
	
	//查找热门博客
	public String findHotArticle(){
		this.setArticles(articleService.findArticles("order by readedCount DESC limit 50"));//limit 50  取50条记录
		return SUCCESS;
	}
	
	public String readArticle(){
		this.setArticle(articleService.readArticle(articleId));
		return SUCCESS;
	}
	
	public String deleteArticleByArticleId(){
		articleService.deleteArticleByArticleId(articleId);
		return SUCCESS;
	}
	
	public String updateArticlePre(){
		this.setArticle(articleService.findArticleByArticleId(articleId));
		return SUCCESS;
	}
	
	public String updateArticle(){
		articleService.updateArticle(article);
		return SUCCESS;
	}

}
