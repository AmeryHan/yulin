package com.yulinsh.vo;

/**
 * ����洢
 * @author Eric
 *�������ƣ��������ݣ����淢��ʱ�䣬��������
 *anID,anTitle,anConent,anTime,anAuthor 
 */
public class AnnouncementVO {
	String anID="";
	String anTitle="";
	String anConent="";
	String anTime="";
	String anAuthor ="";
	String type = "";
	public String getAnID() {
		return anID;
	}
	public void setAnID(String anID) {
		this.anID = anID;
	}
	public String getAnTitle() {
		return anTitle;
	}
	public void setAnTitle(String anTitle) {
		this.anTitle = anTitle;
	}
	public String getAnConent() {
		return anConent;
	}
	public void setAnConent(String anConent) {
		this.anConent = anConent;
	}
	public String getAnTime() {
		return anTime;
	}
	public void setAnTime(String anTime) {
		this.anTime = anTime;
	}
	public String getAnAuthor() {
		return anAuthor;
	}
	public void setAnAuthor(String anAuthor) {
		this.anAuthor = anAuthor;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
