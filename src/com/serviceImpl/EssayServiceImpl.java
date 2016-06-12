package com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.opensymphony.xwork2.ActionContext;
import com.pojo.Diary;
import com.pojo.Essay;
import com.pojo.User;
import com.service.EssayService;
import com.tools.Constants;
import com.tools.Timer;

public class EssayServiceImpl extends HibernateDaoSupport implements
		EssayService {

	@Override
	public Essay addEssay(Essay essay) {
		// TODO Auto-generated method stub
		essay.setDate(Timer.getDate());
		// userId
		// 第一种取session中user 的方法
		Map session = (Map) ActionContext.getContext().get("session");
		User user = (User) session.get(Constants.USER);
		if (user != null) {
			essay.setUserId(user.getUserId());
		}

		this.getHibernateTemplate().save(essay);
		return null;
	}

	@Override
	public List<Essay> findEssays() {
		// TODO Auto-generated method stub
		String hql = "from Essay order by date DESC";

		return (List<Essay>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Essay findEssayByEssayId(int essayId) {
		// TODO Auto-generated method stub
		Essay essay = (Essay)this.getHibernateTemplate().get(Essay.class, essayId);
		return essay;
	}

	@Override
	public void deleteEssayByEssayId(int essayId) {
		// TODO Auto-generated method stub
		Essay essay = findEssayByEssayId(essayId);
		this.getHibernateTemplate().delete(essay);
	}

	@Override
	public Essay updateEssay(Essay essay) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(essay);
		return null;
	}

}
