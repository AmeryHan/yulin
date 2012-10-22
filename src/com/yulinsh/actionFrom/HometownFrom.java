package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.HometownVO;

/**
 * ¼ÒÏç
 * @author Administrator
 *
 */
public class HometownFrom extends ActionForm {
	String homeid="";
	String username="";
	String userid="";
	String hometitle="";
	String homecontent="";
	String hometime="";
	
	HometownVO  vo;
	public HometownVO getHometownVO(){
		vo = new HometownVO();
		vo.setHomeid(this.homeid);
		vo.setUserid(this.userid);
		vo.setUsername(this.username);
		vo.setHometitle(this.hometitle);
		vo.setHomecontent(this.homecontent);
		vo.setHometime(this.hometime);
		return vo;
		
	}
	
 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getHomecontent() {
		return homecontent;
	}
	public void setHomecontent(String homecontent) {
		this.homecontent = homecontent;
	}
	public String getHometime() {
		return hometime;
	}
	public void setHometime(String hometime) {
		this.hometime = hometime;
	}

	public String getHomeid() {
		return homeid;
	}

	public void setHomeid(String homeid) {
		this.homeid = homeid;
	}


	public String getHometitle() {
		return hometitle;
	}


	public void setHometitle(String hometitle) {
		this.hometitle = hometitle;
	}
}
