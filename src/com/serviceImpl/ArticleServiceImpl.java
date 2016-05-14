package com.serviceImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.Article;
import com.service.ArticleService;
import com.tools.Timer;

public class ArticleServiceImpl extends HibernateDaoSupport implements
		ArticleService {
	@Override
	public boolean addArticle(Article article) {
		// TODO Auto-generated method stub
		article.setDate(Timer.getData());
		this.getHibernateTemplate().save(article);
		return true;
	}

	@Override
	public List<Article> findAllArticle() {
		// TODO Auto-generated method stub
		return null;
	}

}
