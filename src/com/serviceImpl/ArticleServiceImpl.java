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
	public List<Article> findAllArticle(String condition) {
		// TODO Auto-generated method stub
		String hql = "from Article " + condition;
		List<Article> articles = (List<Article>)this.getHibernateTemplate().find(hql);
		
		return articles;
	}
	
	@Override
	public Article findArticleByArticleId(int articleId) {
		// TODO Auto-generated method stub
		Article article = (Article)this.getHibernateTemplate().get(Article.class, articleId);
		return article;
	}

}
