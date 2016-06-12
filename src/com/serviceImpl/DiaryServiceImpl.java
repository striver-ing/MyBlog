package com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.opensymphony.xwork2.ActionContext;
import com.pojo.Blog;
import com.pojo.Diary;
import com.pojo.User;
import com.service.DiaryService;
import com.tools.Constants;
import com.tools.Html;
import com.tools.Timer;
import com.tools.Weather;

public class DiaryServiceImpl extends HibernateDaoSupport implements
		DiaryService {

	@Override
	public Diary addDiary(Diary diary) {
		// TODO Auto-generated method stub
		diary.setAddress(Weather.getCity());
		diary.setTemperature(Weather.getTemperature());
		diary.setWeather(Weather.getWeatherInfo());
		diary.setWeatherImagePath(Weather.getWeatherImagePath());
		diary.setDate(Timer.getDate());
		diary.setWeek(Timer.getWeek());
		
		// 摘要处理
		String content = diary.getContent();
		String abstract_ = diary.getAbstract_();
		// 取文章前200字作为摘要 或者遇到图片结束 摘要后加...
		abstract_ = Html.removeTag(content); // 去掉html标签
		int endPos = abstract_.length() > 100 ? 100 : abstract_.length();
		abstract_ = abstract_.substring(0, endPos) + "...";
		diary.setAbstract_(abstract_);

		// userId
		// 第一种取session中user 的方法
		Map session = (Map) ActionContext.getContext().get("session");
		User user = (User) session.get(Constants.USER);
		if (user != null) {
			diary.setUserId(user.getUserId());
		}

		this.getHibernateTemplate().save(diary);
		
		//取diary 以便得到id
		String hql = "from Diary order by diaryId DESC limit 1";
		return (Diary) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public List<Diary> findDiarys() {
		// TODO Auto-generated method stub
		String hql = "from Diary order by date DESC";

		return (List<Diary>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Diary findDiaryByDiaryId(int diaryId) {
		// TODO Auto-generated method stub
		return (Diary) this.getHibernateTemplate().get(Diary.class, diaryId);
	}

	@Override
	public void deleteDiaryByDiaryId(int diaryId) {
		// TODO Auto-generated method stub
		Diary diary = findDiaryByDiaryId(diaryId);
		this.getHibernateTemplate().delete(diary);
	}

	@Override
	public Diary updateDiary(Diary diary) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(diary);
		return null;
	}

}
