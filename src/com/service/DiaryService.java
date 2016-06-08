package com.service;

import java.util.List;

import com.pojo.Diary;

public interface DiaryService {
	Diary addDiary(Diary diary);
	List<Diary> findDiarys();
	Diary findDiaryByDiaryId(int diaryId);
	void deleteDiaryByDiaryId(int diaryId);
	Diary updateDiary(Diary diary);
}
