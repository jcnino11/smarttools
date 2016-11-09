package com.smarttools;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FechaUtil {
	
	public static Date truncarFecha(Date fecha){
		Calendar cal = Calendar.getInstance(); // locale-specific
		cal.setTime(fecha);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		return cal.getTime();
	}
	
	public static String obtenerTimestamp(){
		Calendar cal = Calendar.getInstance();
		DateFormat df = new SimpleDateFormat("yyyyMMDDHHmmssSS");
		return df.format(cal.getTime());
	}
}
