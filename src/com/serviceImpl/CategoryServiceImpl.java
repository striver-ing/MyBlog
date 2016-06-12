package com.serviceImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.BlogCategory;
import com.pojo.DiaryCategory;
import com.pojo.EssayCategory;
import com.service.CategoryService;
import com.tools.Constants;

public class CategoryServiceImpl extends HibernateDaoSupport implements
		CategoryService {

	@Override
	public void addArticleTypes(int articleId, String articleTypes, String articleAttribute) {
		// TODO Auto-generated method stub
		if(articleTypes == null || articleTypes.equals("")) return;
		
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
				DiaryCategory category = new DiaryCategory(articleId, type.trim());
				this.getHibernateTemplate().save(category);
				
			}else if(articleAttribute .equals(Constants.ESSAY)){
				
			}
		}
		
	}
	
	@Override
	public void deleteCategoryByArticleType(String articleType, String articleAttribute) {
		// TODO Auto-generated method stub
		if (articleAttribute .equals(Constants.BLOG)) {
			// 数据库分类表中可能存有重复分类 先查出这些一样的分类 然后删除
			String hql = "from BlogCategory where blogType = '" + articleType+"'";
			List<BlogCategory> blogCategorys = this.getHibernateTemplate().find(hql);
			for (BlogCategory blogCategory : blogCategorys) {
				this.getHibernateTemplate().delete(blogCategory);
			}
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
			hql = "from DiaryCategory group by diaryType";
		}else if(articleAttribute .equals(Constants.ESSAY)){
			hql = "from EssayCategory group by essayType";
		}
		
		return this.getHibernateTemplate().find(hql);
	}
	
	@Override
	public void updateCategory(Object category, String articleAttribute) {
		// TODO Auto-generated method stub
		if (articleAttribute .equals(Constants.BLOG)) {
			BlogCategory blogCategory = (BlogCategory)category;
			int categoryId = blogCategory.getCategoryId();
			String blogType = blogCategory.getBlogType();
			// 数据库分类表中可能存有重复分类 先查出这些一样的分类 然后更新
			//1. 找出原来的分类名
			String hql = "from BlogCategory where categoryId = '" + categoryId+"'";
			BlogCategory blogCategoryOlder =(BlogCategory) this.getHibernateTemplate().get(BlogCategory.class, categoryId);
			String blogTypeOlder = blogCategoryOlder.getBlogType();
			//2. 根据原来的分类名找出具有同样名字的分类
			hql = "from BlogCategory where blogType = '" + blogTypeOlder+"'";
			List<BlogCategory> blogCategorys = this.getHibernateTemplate().find(hql);
			//3. 更新
			for (BlogCategory blogCategory2 : blogCategorys) {
				blogCategory2.setBlogType(blogType);
				this.getHibernateTemplate().update(blogCategory2);
			}
			
		}else if(articleAttribute .equals(Constants.DIARY)){
			
		}else if(articleAttribute .equals(Constants.ESSAY)){
			
		}
	}

	
	@Override
	public Object findCategoryByCategoryId(int categoryId, String articleAttribute) {
		// TODO Auto-generated method stub
		Object object = null;
		if (articleAttribute .equals(Constants.BLOG)) {
			object = this.getHibernateTemplate().get(BlogCategory.class, categoryId);
		}else if(articleAttribute .equals(Constants.DIARY)){
			
		}else if(articleAttribute .equals(Constants.ESSAY)){
			
		}
		return object;
	}
	
	@Override
	public List findArticlesByArticleType(int categoryId, String articleAttribute) {
		// TODO Auto-generated method stub
		String hql = null;
		String articleType = null;
		if (articleAttribute .equals(Constants.BLOG)) {
			articleType =((BlogCategory)this.getHibernateTemplate().get(BlogCategory.class, categoryId)).getBlogType();
//			SELECT * FROM MyBlog.Blog where blog_id in (select blog_id from MyBlog.BlogCategory where blog_type = "fdd");
			hql = "from Blog where blogId in (select blogId from BlogCategory where blogType = '"+ articleType +"')";
		}else if(articleAttribute .equals(Constants.DIARY)){
			articleType =((DiaryCategory)this.getHibernateTemplate().get(DiaryCategory.class, categoryId)).getDiaryType();
			hql = "from Diary where diaryId in (select diaryId from DiaryCategory where diaryType = '"+ articleType +"')";
		}else if(articleAttribute .equals(Constants.ESSAY)){
			articleType =((EssayCategory)this.getHibernateTemplate().get(EssayCategory.class, categoryId)).getEssayType();
			hql = "from Essay where essayId in (select essayId from EssayCategory where essayType = '"+ articleType +"')";
		}else{
			return null;
		}
		
		return this.getHibernateTemplate().find(hql);
	}
}
