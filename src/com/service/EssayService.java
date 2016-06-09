package com.service;

import java.util.List;

import com.pojo.Essay;

public interface EssayService {
	Essay addEssay(Essay essay);
	List<Essay> findEssays();
	Essay findEssayByEssayId(int essayId);
	void deleteEssayByEssayId(int essayId);
	Essay updateEssay(Essay essay);
}
