package com.wdc.utils;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TimeUtil {
	static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	static SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
	/**
	 * 获取当前时间
	 * 
	 * @return
	 */
	public static String getnowTime() {
		Calendar ca = Calendar.getInstance();
		String time = format.format(ca.getTime());
		return time;
	}
	/**
	 * 获取当前时间,年月日
	 * @return
	 */
	public static String getnowTime2() {
		Calendar ca = Calendar.getInstance();
		String time = format2.format(ca.getTime());
		return time;
	}
	
	public static String getnowTime(boolean a) throws ParseException {
		StringBuilder build = new StringBuilder();
		Calendar ca = Calendar.getInstance();
		String time = format2.format(ca.getTime());
		build.append(time);
		if (a) {
			build.append(" 00:00:00");
		} else {
			build.append(" 23:59:59");
		}
		return build.toString();
	}
	/**
	 * 获取当前时间戳,精确到秒
	 * 
	 * @return
	 */
	public static Long getCurrentTimeMillis() {
		return System.currentTimeMillis();
	}

	/**
	 * 时间戳转换时间
	 * @param ctime
	 * @return
	 */
	public static String currentTimeMillisToTime(long ctime) {
		String sd = format.format(new Date(Long.parseLong(String.valueOf(ctime)))); // 时间戳转换成时间
		return sd;
	}
	/**
	 * String  分钟 类型时间转时间戳
	 * 
	 * @param strtime
	 * @return
	 * @throws ParseException
	 */
	public static Long strTimetoCurrentTimeMillis(String strtime) throws ParseException {
		Date da = format.parse(strtime);
		Long sctime = da.getTime() / 1000;
		return sctime;
	}
	
	/**
	 * String  时间转时间戳
	 * 
	 * @param strtime
	 * @return
	 * @throws ParseException
	 */
	public static Long strTimetoCurrentTime(String strtime) throws ParseException {
		Date da = format.parse(strtime);
		Long sctime = da.getTime() ;
		return sctime;
	}
	
	
	/**
	 * 获取上一分钟数 开始的时间戳 
	 * @param minute  差距分钟数
	 * @return
	 */
	public static Long getTimeStByMinute(int minute) {

        Calendar calendar = Calendar.getInstance();

        calendar.add(Calendar.MINUTE, minute);
        
        String timefmt = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(calendar.getTime());
        timefmt+=":00";
        try {
			return TimeUtil.strTimetoCurrentTime(timefmt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        return null;
    }
	
	
	/**
	 * 获取上一分钟数 开始的时间戳 
	 * @param minute  差距分钟数
	 * @return
	 */
	public static Long getTimeStByHour(int hour) {

        Calendar calendar = Calendar.getInstance();

        calendar.add(Calendar.HOUR, hour);
        
        String timefmt = new SimpleDateFormat("yyyy-MM-dd HH").format(calendar.getTime());
        timefmt+=":00:00";
        try {
			return TimeUtil.strTimetoCurrentTime(timefmt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        return null;
    }
	
	
	
	/**
	 * 获取制定时间上一个节点的 时间戳 
	 * @param minute  差距分钟数
	 * @return
	 */
	public static Long getTimeStByMinuteAndTime(int minute,Long time) {

       Calendar calendar = Calendar.getInstance();

       calendar.setTimeInMillis(time);
       
       calendar.add(Calendar.MINUTE, minute);
       
       String timefmt = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(calendar.getTime());
       timefmt+=":00";
       try {
			return TimeUtil.strTimetoCurrentTime(timefmt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
       return null;
   }
	
	
	
	/**
	 * 获取制定时间上一个节点的 时间戳 
	 * @param minute  差距分钟数
	 * @return
	 */
	public static String getTimeFmtByMinuteAndTime(int minute,Long time){

		try {
			Calendar calendar = Calendar.getInstance();
			
			calendar.setTimeInMillis(time);
			
			calendar.add(Calendar.MINUTE, minute);
			
			String timefmt = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(calendar.getTime());
			
			timefmt+=":00";
			
			return timefmt;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
   }
	
	/**
	 * 获取制定时间上一个节点的 时间戳 
	 * @param minute  差距分钟数
	 * @return
	 */
	public static Long getTimeStByMinuteAndDay(Long time) {

       Calendar calendar = Calendar.getInstance();

       calendar.setTimeInMillis(time);
       
       String timefmt = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
       timefmt+=" 00:00:00";
       try {
			return TimeUtil.strTimetoCurrentTime(timefmt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
       return null;
   }
	
	
	/**
	 * 获取上一天开始时间的时间戳
	 * @param day
	 * @return
	 */
	public static Long getTimeStByDay(int daynub) {

        Calendar calendar = Calendar.getInstance();
        
        
        calendar.add(Calendar.DATE, daynub);
        
        String timefmt = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        timefmt+=" 00:00:00";
        try {
			return TimeUtil.strTimetoCurrentTime(timefmt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        return null;
    }
	
	/**
	 * 获取上一天开始时间的时间戳
	 * @param day
	 * @return
	 */
	public static Long getTimeStByDay(int daynub,Long times) {

        Calendar calendar = Calendar.getInstance();
        
        calendar.setTimeInMillis(times);
        
        calendar.add(Calendar.DATE, daynub);
        
        String timefmt = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        //timefmt+=" 23:59:59";
        timefmt+=" 00:00:00";
        try {
			return TimeUtil.strTimetoCurrentTime(timefmt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        return null;
    }
	
	
	/**
	 *  查询最靠近的时间节点
	 * @param array
	 * @param target
	 * @return
	 */
	public static Integer getNear(Integer[] array, Integer target) {
		if (array.length == 0)
			return -1;
		if (array.length == 1)
			return 0;
		int min = 0;
		int max = array.length - 1;
		int mid = (int) (min + max) / 2;
		while (max - min > 1) {
			if (target == array[mid])
				return mid;
			if (target < array[mid])
				max = mid;
			if (target > array[mid])
				min = mid;
			mid = (int) (min + max) / 2;
		}
		Integer result=	array[max] - target < target - array[min] ? max : min;
		return array[result]>target? result-1:result;
	}
	
	
	 /**
     * 获取星期一
     * @param date
     * @return
     */
    public static Date getThisMonday(Date date){
		Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	int monday = 2;
    	int weekIndex = cal.get(Calendar.DAY_OF_WEEK);
    	if(weekIndex==1){
    		weekIndex +=7;
    	}
    	return add(date, Calendar.DAY_OF_MONTH, (monday-weekIndex));
    }
	
    
    /**
     * 
     * @param date
     * @param intervalType Calendar.SECOND
     * @param interval
     * @return
     */
    public static Date add(Date date,int intervalType,int interval){
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    		cal.add(intervalType, interval);
    	return cal.getTime();
    }
    
    

	// 这个时间戳是不是今天  
	public static boolean isToday(Date date){
	     SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd");
	     if(fmt.format(date).toString().equals(fmt.format(new Date()).toString())){//格式化为相同格式
	          return true;
	      }else {
	        return false;
	      }
	 }
    
	
	
	public static void main(String[] args) throws ParseException {
		String time=getnowTime2();
		System.out.println(time);
	}
}
