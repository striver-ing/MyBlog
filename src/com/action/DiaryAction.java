package com.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Diary;
import com.service.DiaryService;

public class DiaryAction extends ActionSupport {
	Diary diary;
	List<Diary> diarys;
	DiaryService diaryService;
	public Diary getDiary() {
		return diary;
	}
	public void setDiary(Diary diary) {
		this.diary = diary;
	}
	public List<Diary> getDiarys() {
		return diarys;
	}
	public void setDiarys(List<Diary> diarys) {
		this.diarys = diarys;
	}
	public DiaryService getDiaryService() {
		return diaryService;
	}
	public void setDiaryService(DiaryService diaryService) {
		this.diaryService = diaryService;
	}
	
	public String addDiary(){
		diaryService.addDiary(diary);
		
		return SUCCESS;
	}
	
	public String findAllDiary(){
		this.setDiarys(diaryService.findDiarys());
		return SUCCESS;
	}
}
