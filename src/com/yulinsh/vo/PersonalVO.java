package com.yulinsh.vo;

/**
 * 个人申请
 * @author Eric
 * 头像
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
注册时间：pzctime
PersonalTable 
pID,ptoux,pName,pSex,pBirthTime,pPhone,pMailbox,PQQ,pMsn,pAuditState,pResidence,pHometown,pContent：

 */
public class PersonalVO {
	
 
 
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
	String pcontent="";
	String pzctime="";//注册时间
 
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
 
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPzctime() {
		return pzctime;
	}
	public void setPzctime(String pzctime) {
		this.pzctime = pzctime;
	}
	 
	 
}
