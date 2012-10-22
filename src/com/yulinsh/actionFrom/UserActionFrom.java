package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.UserVo;

public class UserActionFrom extends ActionForm {

	String userid="";
	String userName="";
	String userAdrr="";
	public String getUserAdrr() {
		return userAdrr;
	}
	public void setUserAdrr(String userAdrr) {
		this.userAdrr = userAdrr;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public UserVo getUserVo()
	{
		UserVo vo = new UserVo();
		vo.setUserid(this.userid);
		vo.setUserName(this.userName);
		vo.setUserAdrr(this.userAdrr);
		return vo;
	}
}
