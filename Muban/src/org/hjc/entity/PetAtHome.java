package org.hjc.entity;

public class PetAtHome {
	private int isinhome;
	private String time;
	public int getIsinhome() {
		return isinhome;
	}
	public void setIsinhome(int isinhome) {
		this.isinhome = isinhome;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public PetAtHome(int isinhome, String time) {
		super();
		this.isinhome = isinhome;
		this.time = time;
	}
	public PetAtHome() {
		
	}
		
}
