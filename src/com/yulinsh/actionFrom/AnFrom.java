package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.AnnouncementVO;
import com.yulinsh.vo.NewsVO;

/**
 * 页面数据处理
 * @author Eric
 *
 */
public class AnFrom extends ActionForm {
	String anID="";
	String anTitle="";
	String anConent="";
	String anTime="";
	String anAuthor ="";
	
	AnnouncementVO vo=null;
	public AnnouncementVO getAnnouncementVO()
	{
		vo = new AnnouncementVO();
		vo.setAnID(this.anID);
		vo.setAnAuthor(this.anAuthor);
		vo.setAnConent(this.anConent);
		vo.setAnTime(this.anTime);
		vo.setAnTitle(this.anTitle);
		return vo;
	}
	
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
}
