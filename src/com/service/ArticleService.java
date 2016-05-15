package com.service;

import java.util.List;

import com.pojo.Article;

public interface ArticleService {
	Article addArticle(Article article);
	List<Article> findArticles(String condition);
	Article findArticleByArticleId(int articleId);
	void deleteArticleByArticleId(int articleId);
	Article updateArticle(Article article);
	Article readArticle(int articleId);
}
