package com.tools;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * http://i.tianqi.com/index.php?c=code&id=1 解析这个网页  获取当天天气和地点信息
 */
public class Weather {
	final static String URL = "http://i.tianqi.com/index.php?c=code&id=1";
	static String html = getHtmlResource(URL, "GBK");
	
	private static String findMessage(String regex){
		String message = null;
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(html);
		if (matcher.find()) {
  		System.out.println(matcher.group(0)); //正则代表的匹配项 如<img src="">
//			System.out.println(matcher.group(1)); // ()里的匹配项
			message = matcher.group(1);
		}

		return message;
	}
	
	private static String getHtmlResource(String pageUrl,String encoding){  
        StringBuffer sb = new StringBuffer();  
        try {  
            //构建一URL对象  
            URL url = new URL(pageUrl);  
            //使用openStream得到一输入流并由此构造一个BufferedReader对象  
            BufferedReader in = new BufferedReader(new InputStreamReader(url  
                    .openStream(), encoding));  
            String line;  
            //读取www资源  
            while ((line = in.readLine()) != null) {  
                sb.append(line);  
                sb.append("\n");
            }  
            in.close();  
        } catch (Exception ex) {  
            System.err.println(ex);  
        }  
        return sb.toString();  
	}
	
	public static String getCity(){
    	String regex = "<div class=\"cityname\">([^</div>]*)</div>";
    	return findMessage(regex);
    }
	
	public static String getWeatherImagePath(){
	   	String regex = "img class='pngtqico'[^>]*src='([^']*)'";
    	return findMessage(regex);
	}
	
	public static String getWeatherInfo(){
       	String regex = "<img class='pngtqico'[^<]*/>([^\n]*)";
    	return findMessage(regex);
		
	}
//	<span class="cc30 f1">28℃</span>～<span class="c390 f1">19℃</span><span class="wind" style="padding:0 2px;">南风 5-6级 </span>
	public static String getTemperature(){
       	String regexHeigh = "<span class=\"cc30 f1\">([^<]*)</span>";
       	String regexLow = "<span class=\"c390 f1\">([^<]*)</span>";
    	return findMessage(regexHeigh) + "~" + findMessage(regexLow);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(getCity());
		System.out.println(getWeatherInfo());
		System.out.println(getWeatherImagePath());
		System.out.println(Timer.getWeek());
		System.out.println(getTemperature());
	}

}
