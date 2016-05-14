package com.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Article;
import com.service.ArticleService;

public class ArticleAction extends ActionSupport{
	Article article;
	List<Article> articles;
	ArticleService articleService;
	public Article getArticle() {
		return article;
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

}
