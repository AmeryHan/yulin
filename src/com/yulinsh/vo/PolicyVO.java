package com.yulinsh.vo;

/**
 * 政策动向
 * @author Eric
 *  标题、发布者、发布时间、内容；
 */
public class PolicyVO {
	String policyId="";
	String policyTitle="";
	String policyAuthor ="";
	String policyTime="";
	String policyContent="";
	public String getPolicyId() {
		return policyId;
	}
	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}
	public String getPolicyTitle() {
		return policyTitle;
	}
	public void setPolicyTitle(String policyTitle) {
		this.policyTitle = policyTitle;
	}
	public String getPolicyAuthor() {
		return policyAuthor;
	}
	public void setPolicyAuthor(String policyAuthor) {
		this.policyAuthor = policyAuthor;
	}
	public String getPolicyTime() {
		return policyTime;
	}
	public void setPolicyTime(String policyTime) {
		this.policyTime = policyTime;
	}
	public String getPolicyContent() {
		return policyContent;
	}
	public void setPolicyContent(String policyContent) {
		this.policyContent = policyContent;
	}
}
