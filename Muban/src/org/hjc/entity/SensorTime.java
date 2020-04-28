package org.hjc.entity;

public class SensorTime {
	private String id;
	private String temp;
	private String time;
	public SensorTime() {
		
	}
	public SensorTime(String id, String temp, String time) {
		this.id = id;
		this.temp = temp;
		this.time = time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	

}
