package com.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Essay;
import com.service.EssayService;

public class EssayAction extends ActionSupport {
	Essay essay;
	List<Essay> essays;
	EssayService essayService;
	int essayId;
	public Essay getEssay() {
		return essay;
	}
	public void setEssay(Essay essay) {
		this.essay = essay;
	}
	public List<Essay> getEssays() {
		return essays;
	}
	public void setEssays(List<Essay> essays) {
		this.essays = essays;
	}
	public EssayService getEssayService() {
		return essayService;
	}
	public void setEssayService(EssayService essayService) {
		this.essayService = essayService;
	}
	public int getEssayId() {
		return essayId;
	}
	public void setEssayId(int essayId) {
		this.essayId = essayId;
	}
	
	public String addEssay(){
		essayService.addEssay(essay);
		return SUCCESS;
	}
	
	public String findAllEssay(){
		this.setEssays(essayService.findEssays());
		return SUCCESS;
	}
	
	public String delEssayById(){
		essayService.deleteEssayByEssayId(essayId);
		return SUCCESS;
	}

}
