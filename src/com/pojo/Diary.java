package com.pojo;

/**
 * Diary entity. @author MyEclipse Persistence Tools
 */

public class Diary implements java.io.Serializable {

	// Fields

	private Integer diaryId;
	private Integer userId;
	private String content;
	private String date;
	private String week;
	private String address;
	private String weather;
	private String weatherImagePath;
	private String temperature;

	// Constructors

	/** default constructor */
	public Diary() {
	}

	/** minimal constructor */
	public Diary(Integer userId, String content) {
		this.userId = userId;
		this.content = content;
	}

	/** full constructor */
	public Diary(Integer userId, String content, String date, String week,
			String address, String weather, String weatherImagePath,
			String temperature) {
		this.userId = userId;
		this.content = content;
		this.date = date;
		this.week = week;
		this.address = address;
		this.weather = weather;
		this.weatherImagePath = weatherImagePath;
		this.temperature = temperature;
	}

	// Property accessors

	public Integer getDiaryId() {
		return this.diaryId;
	}

	public void setDiaryId(Integer diaryId) {
		this.diaryId = diaryId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getWeek() {
		return this.week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWeather() {
		return this.weather;
	}

	public void setWeather(String weather) {
		this.weather = weather;
	}

	public String getWeatherImagePath() {
		return this.weatherImagePath;
	}

	public void setWeatherImagePath(String weatherImagePath) {
		this.weatherImagePath = weatherImagePath;
	}

	public String getTemperature() {
		return this.temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

}