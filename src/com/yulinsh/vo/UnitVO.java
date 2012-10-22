package com.yulinsh.vo;

/**
 * 单位申请
 * @author Eric
 *姓名
性别
公司名称：
职务
电话：
邮箱：
qq：
msn：
审核状态：
公司网址：
公司简介：
注册时间：pzctime
UnitTable 
UnitID,pname ,psex,UnitName,unitPost,UnitPhone,UnitMailBox,
UnitQQ,UnitMsn,UnitAuditState,UnitWebsite,UnitContent
 */
public class UnitVO {

	 
	String unitID="";
	String pname ="";
    String unitPost="";
	String psex="";
	String unitName="";
	String unitPhone="";
	String unitMailBox="";
	String unitQQ="";
	String unitMsn="";
	String unitAuditState="";
	String unitWebsite="";
	String unitContent="";
	String unittime="";
	String pzctime="";
 
	public String getUnittime() {
		return unittime;
	}
	public void setUnittime(String unittime) {
		this.unittime = unittime;
	}
	public String getUnitID() {
		return unitID;
	}
	public void setUnitID(String unitID) {
		this.unitID = unitID;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPsex() {
		return psex;
	}
	public void setPsex(String psex) {
		this.psex = psex;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getUnitPhone() {
		return unitPhone;
	}
	public void setUnitPhone(String unitPhone) {
		this.unitPhone = unitPhone;
	}
	public String getUnitMailBox() {
		return unitMailBox;
	}
	public void setUnitMailBox(String unitMailBox) {
		this.unitMailBox = unitMailBox;
	}
	public String getUnitQQ() {
		return unitQQ;
	}
	public void setUnitQQ(String unitQQ) {
		this.unitQQ = unitQQ;
	}
	public String getUnitMsn() {
		return unitMsn;
	}
	public void setUnitMsn(String unitMsn) {
		this.unitMsn = unitMsn;
	}
	public String getUnitAuditState() {
		return unitAuditState;
	}
	public void setUnitAuditState(String unitAuditState) {
		this.unitAuditState = unitAuditState;
	}
	public String getUnitWebsite() {
		return unitWebsite;
	}
	public void setUnitWebsite(String unitWebsite) {
		this.unitWebsite = unitWebsite;
	}
	public String getUnitContent() {
		return unitContent;
	}
	public void setUnitContent(String unitContent) {
		this.unitContent = unitContent;
	}
	public String getUnitPost() {
		return unitPost;
	}
	public void setUnitPost(String unitPost) {
		this.unitPost = unitPost;
	}
	public String getPzctime() {
		return pzctime;
	}
	public void setPzctime(String pzctime) {
		this.pzctime = pzctime;
	} 
}
