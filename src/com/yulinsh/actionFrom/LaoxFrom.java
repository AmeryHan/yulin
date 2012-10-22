package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.LaoxVO;

 /**
  * 老乡信息保存
  * @author Eric
  *创建时间：2012-2-12
  */
public class LaoxFrom extends ActionForm {
	String laoxid="";
	String userid="";
	String username="";
	String laoxcontent="";
	String laoxtime="";
	LaoxVO vo;
	public LaoxVO getLaoxVO()
	{
		vo=new LaoxVO();
//		vo.setLaoxid(this.laoxid);
		vo.setUserid(this.userid);
		vo.setUsername(this.username);
		vo.setLaoxcontent(this.laoxcontent);
//		vo.setLaoxtime(this.laoxtime);
		return vo;
	}
	public String getLaoxid() {
		return laoxid;
	}
	public void setLaoxid(String laoxid) {
		this.laoxid = laoxid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLaoxcontent() {
		return laoxcontent;
	}
	public void setLaoxcontent(String laoxcontent) {
		this.laoxcontent = laoxcontent;
	}
	public String getLaoxtime() {
		return laoxtime;
	}
	public void setLaoxtime(String laoxtime) {
		this.laoxtime = laoxtime;
	}
}
