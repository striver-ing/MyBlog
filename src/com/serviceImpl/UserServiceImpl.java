package com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.opensymphony.xwork2.ActionContext;
import com.pojo.User;
import com.service.UserService;
import com.tools.Constants;

public class UserServiceImpl extends HibernateDaoSupport implements UserService {

	@Override
	public String login(User user) {
		// TODO Auto-generated method stub
		String hql = "from User where name = '" + user.getName() + "'";
		List<User> users = (List<User>)this.getHibernateTemplate().find(hql);
		if (users.size() == 0) {
			return Constants.LOGIN_NO_USER;
		}
		
		for (User user_ : users) {
			if (user_.getPwd().equals(user.getPwd())) {
				Map session = (Map)ActionContext.getContext().get("session");
				session.put(Constants.USER, user_);
				return Constants.LOGIN_SUCCESS;
			}
		}
		
		return Constants.LOGIN_ERROR_PWD;
	}

}
