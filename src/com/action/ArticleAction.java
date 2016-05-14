package com.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Article;
import com.service.ArticleService;

public class ArticleAction extends ActionSupport{
	Article article;
	List<Article> articles;
	ArticleService articleService;
	int articleId;
	int userId;
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
		return articleService.addArticle(article)? SUCCESS: ERROR;
	}
	
	public String findAllArticle(){
		this.setArticles(articleService.findAllArticle("order by date DESC"));
		return SUCCESS;
	}
	
	public String findArticleByArticleId(){
		this.setArticle(articleService.findArticleByArticleId(articleId));
		return SUCCESS;
	}
	
	public String deleteArticleByArticleId(){
		articleService.deleteArticleByArticleId(articleId);
		return SUCCESS;
	}
	
	public String updateArticle(){
		articleService.updateArticle(article);
		return SUCCESS;
	}

}
