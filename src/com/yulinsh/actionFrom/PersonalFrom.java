package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.PersonalVO;
import com.yulinsh.vo.UserVo;

/**
 * 个人申请 Form
 * @author Eric
 *注册姓名：
性别：
出生日期：
电话：
邮箱：
qq：
msn：
审核状态：
现居地址：
家乡：
个人简介：
注册时间 ：unittime
 */
public class PersonalFrom extends ActionForm {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String pid="";
	String ptoux="";
	String pName="";
	String pSex="";
	String pBirthTime="";

	String pPhone="";
	String pMailbox="";
	String pQQ="";
	String pMsn="";
	String pAuditState="";
	String pResidence="";
	String pHometown="";
	String pContent="";
	String pzctime="";//注册时间
	private PersonalVO vo=null;
	public PersonalVO getPersonalVO()
	{
		vo = new PersonalVO();
		vo.setPid(this.pid);
		vo.setPName(this.pName);
		vo.setPSex(this.pSex);
		vo.setPBirthTime(this.pBirthTime);
		vo.setPPhone(this.pPhone);
		vo.setPMailbox(this.pMailbox);
		vo.setPQQ(this.pQQ);
		vo.setPMsn(this.pMsn);
		vo.setPAuditState(this.pAuditState);
		vo.setPResidence(this.pResidence);
		vo.setPHometown(this.pHometown);
		vo.setPcontent(this.pContent);
 
		return vo;
	}
 
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPtoux() {
		return ptoux;
	}
	public void setPtoux(String ptoux) {
		this.ptoux = ptoux;
	}
	public String getPName() {
		return pName;
	}
	public void setPName(String name) {
		pName = name;
	}
	public String getPSex() {
		return pSex;
	}
	public void setPSex(String sex) {
		pSex = sex;
	}
	public String getPBirthTime() {
		return pBirthTime;
	}
	public void setPBirthTime(String birthTime) {
		pBirthTime = birthTime;
	}
	public String getPPhone() {
		return pPhone;
	}
	public void setPPhone(String phone) {
		pPhone = phone;
	}
	public String getPMailbox() {
		return pMailbox;
	}
	public void setPMailbox(String mailbox) {
		pMailbox = mailbox;
	}
	public String getPQQ() {
		return pQQ;
	}
	public void setPQQ(String pqq) {
		pQQ = pqq;
	}
	public String getPMsn() {
		return pMsn;
	}
	public void setPMsn(String msn) {
		pMsn = msn;
	}
	public String getPAuditState() {
		return pAuditState;
	}
	public void setPAuditState(String auditState) {
		pAuditState = auditState;
	}
	public String getPResidence() {
		return pResidence;
	}
	public void setPResidence(String residence) {
		pResidence = residence;
	}
	public String getPHometown() {
		return pHometown;
	}
	public void setPHometown(String hometown) {
		pHometown = hometown;
	}
	public String getPContent() {
		return pContent;
	}
	public void setPContent(String content) {
		pContent = content;
	}
	public String getPzctime() {
		return pzctime;
	}
	public void setPzctime(String pzctime) {
		this.pzctime = pzctime;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
	 
}
