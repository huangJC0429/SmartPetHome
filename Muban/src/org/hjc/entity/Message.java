package org.hjc.entity;

import java.text.DateFormat;

public class Message {
	private String Name;
	private String Email;
	private String Textarea;
	private String Time;
	public Message() {
		
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getTextarea() {
		return Textarea;
	}
	public void setTextarea(String textarea) {
		Textarea = textarea;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public Message(String name, String email, String textarea, String time) {
		super();
		Name = name;
		Email = email;
		Textarea = textarea;
		Time = time;
	}

}
