package com.service;

import java.util.List;

import com.pojo.Article;

public interface ArticleService {
	boolean addArticle(Article article);
	List<Article> findAllArticle();

}
