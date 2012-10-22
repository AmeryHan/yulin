package com.yulinsh.vo;

/***
 * »áÔ±Ëæ±Ê
 * @author Administrator
 *
 *memberid£¬userid£¬username£¬membercontent£¬membertime
 */
public class MemberVO {
	String memberid="";
	String userid="";
	String username="";
	String membertitle="";
	String membercontent="";
	String membertime="";
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
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
	public String getMembercontent() {
		return membercontent;
	}
	public void setMembercontent(String membercontent) {
		this.membercontent = membercontent;
	}
	public String getMembertime() {
		return membertime;
	}
	public void setMembertime(String membertime) {
		this.membertime = membertime;
	}
	public String getMembertitle() {
		return membertitle;
	}
	public void setMembertitle(String membertitle) {
		this.membertitle = membertitle;
	}
}
