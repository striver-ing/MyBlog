package com.serviceImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.BlogCategory;
import com.service.CategoryService;
import com.tools.Constants;

public class CategoryServiceImpl extends HibernateDaoSupport implements
		CategoryService {

	@Override
	public void addArticleTypes(int articleId, String articleTypes, String articleAttribute) {
		// TODO Auto-generated method stub
		if(articleTypes == null) return;
		
		String[] types = articleTypes.split(",|，");
		for (int i = 0; i < types.length; i++) {
			//去重 拿当前str与后面的比较 如果后面有 则忽略当前的
			int j;
			for (j = i + 1; j < types.length; j++) {
				if (types[i].equals(types[j])) {
					break;
				}
			}
			if (j != types.length) {
				continue;
			}
			
			String type = types[i];
			System.out.print(type + " ; ");
			//将分类存入数据库
			if (articleAttribute .equals(Constants.BLOG)) {
				BlogCategory category = new BlogCategory(articleId, type.trim());
				this.getHibernateTemplate().save(category);
			}else if(articleAttribute .equals(Constants.DIARY)){
				
			}else if(articleAttribute .equals(Constants.ESSAY)){
				
			}
		}
		
	}
	
	@Override
	public void deleteCategoryById(int category, String articleAttribute) {
		// TODO Auto-generated method stub
		if (articleAttribute .equals(Constants.BLOG)) {
		}else if(articleAttribute .equals(Constants.DIARY)){
			
		}else if(articleAttribute .equals(Constants.ESSAY)){
			
		}
	}
	
	@Override
	public List findCategorys(String articleAttribute) {
		// TODO Auto-generated method stub
		String hql = null;
		if (articleAttribute .equals(Constants.BLOG)) {
			hql = "from BlogCategory group by blogType";
		}else if(articleAttribute .equals(Constants.DIARY)){
			
		}else if(articleAttribute .equals(Constants.ESSAY)){
			
		}
		this.getHibernateTemplate().find(hql);
		return this.getHibernateTemplate().find(hql);
	}
	
	@Override
	public void updateCategory(String articleTypes, String articleAttribute) {
		// TODO Auto-generated method stub
		if (articleAttribute .equals(Constants.BLOG)) {
		}else if(articleAttribute .equals(Constants.DIARY)){
			
		}else if(articleAttribute .equals(Constants.ESSAY)){
			
		}
	}

}
