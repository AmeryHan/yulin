package com.yulinsh.vo;

/**
 * 办事处 信息存储
 * 
 * @author Eric 
 * 办事处名称，办事处地址 ，负责人，联系电话 ，qq,邮箱，网址，进驻时间，发布者，内容；
 *  OfficeTable
 *         OfficeID
 *         ,OfficeName,Officeadrr,Officepname,Officephone,OfficeQQ,OfficeEmie
 *         ,OfficeTime,OfficeAuthor,OfficeContent.
 */
public class OfficeVO {

	String officeID="";
	String officeadrr="";
	String officepname="";
	String officephone="";
	String officeQQ="";
	String officeEmie="";
	String officeName="";
	String officeTime="";
	String officeAuthor="";
	String officeContent="";
	public String getOfficeID() {
		return officeID;
	}
	public void setOfficeID(String officeID) {
		this.officeID = officeID;
	}
	public String getOfficeadrr() {
		return officeadrr;
	}
	public void setOfficeadrr(String officeadrr) {
		this.officeadrr = officeadrr;
	}
	public String getOfficepname() {
		return officepname;
	}
	public void setOfficepname(String officepname) {
		this.officepname = officepname;
	}
	public String getOfficephone() {
		return officephone;
	}
	public void setOfficephone(String officephone) {
		this.officephone = officephone;
	}
	public String getOfficeQQ() {
		return officeQQ;
	}
	public void setOfficeQQ(String officeQQ) {
		this.officeQQ = officeQQ;
	}
	public String getOfficeEmie() {
		return officeEmie;
	}
	public void setOfficeEmie(String officeEmie) {
		this.officeEmie = officeEmie;
	}
	public String getOfficeName() {
		return officeName;
	}
	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}
	public String getOfficeTime() {
		return officeTime;
	}
	public void setOfficeTime(String officeTime) {
		this.officeTime = officeTime;
	}
	public String getOfficeAuthor() {
		return officeAuthor;
	}
	public void setOfficeAuthor(String officeAuthor) {
		this.officeAuthor = officeAuthor;
	}
	public String getOfficeContent() {
		return officeContent;
	}
	public void setOfficeContent(String officeContent) {
		this.officeContent = officeContent;
	}

	 
}
