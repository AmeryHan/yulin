package com.yulinsh.vo;

/***
 *  家乡信息添加
 * @author eric 
 *Hometown
username
userid
homecontent
hometime
 


 */


public class HometownVO {

	String homeid="";
	String username="";
	String userid="";
	String hometitle="";
	String homecontent="";
	String hometime="";
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
