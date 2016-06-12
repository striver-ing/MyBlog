package com.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.Diary;
import com.service.DiaryService;

public class DiaryAction extends ActionSupport {
	Diary diary;
	List<Diary> diarys;
	int diaryId;
	DiaryService diaryService;
	
	int articleId; //用于分类
	
	
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getDiaryId() {
		return diaryId;
	}
	public void setDiaryId(int diaryId) {
		this.diaryId = diaryId;
	}
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
		Diary diary_ = diaryService.addDiary(diary);
		this.setArticleId(diary_.getDiaryId()); //以便分类action中取articleId
		
		return SUCCESS;
	}
	
	public String findAllDiary(){
		this.setDiarys(diaryService.findDiarys());
		return SUCCESS;
	}
	
	public String delDiaryById(){
		diaryService.deleteDiaryByDiaryId(diaryId);
		return SUCCESS;
	}
	
	public String findDiaryById(){
		this.setDiary(diaryService.findDiaryByDiaryId(diaryId));
		return SUCCESS;
	}
}
