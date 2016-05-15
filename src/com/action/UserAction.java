package com.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.User;
import com.service.UserService;
import com.tools.Constants;

public class UserAction extends ActionSupport {
	User user;
	UserService userService;
	String loginResult;
	
	
	public String getLoginResult() {
		return loginResult;
	}
	public void setLoginResult(String loginResult) {
		this.loginResult = loginResult;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	//-----------------------------------
	
	public String login(){
		loginResult  = userService.login(user);
		System.out.println(loginResult);
		if (loginResult == Constants.LOGIN_SUCCESS) {
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String loginOut(){
		Map session = (Map)ActionContext.getContext().get("session");
		session.remove(Constants.USER);
		
		return SUCCESS;
	}
	
}
