package com.service;

import java.util.List;

import com.pojo.Article;

public interface ArticleService {
	boolean addArticle(Article article);
	List<Article> findArticles(String condition);
	Article findArticleByArticleId(int articleId);
	void deleteArticleByArticleId(int articleId);
	void updateArticle(Article article);
	Article readArticle(int articleId);
}
