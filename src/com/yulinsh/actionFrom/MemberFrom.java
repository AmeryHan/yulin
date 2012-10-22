package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.MemberVO;

/**
 * 
 * @author Administrator
 *
 */
public class MemberFrom extends ActionForm {
	String memberid="";
	String userid="";
	String username="";
	 
	String membertitle="";
	String membercontent="";
	String membertime="";
	MemberVO vo;
	public MemberVO getMemberVO()
	{
            vo=new MemberVO();
            vo.setMemberid(this.memberid);
            vo.setUserid(this.userid);
            vo.setUsername(this.username);
            vo.setMembertitle(this.membertitle);
            vo.setMembercontent(this.membercontent);
            vo.setMembertime(this.membertime);
            return vo;
	}

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
