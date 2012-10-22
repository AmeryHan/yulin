package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.PolicyVO;

/**
 * 政策动向
 * @author Eric
 *
 */
public class PolicyFrom extends ActionForm {
	String policyId="";
	String policyTitle="";
	String policyAuthor ="";
	String policyTime="";
	String policyContent="";
	private PolicyVO vo=null;
	public PolicyVO getPolicyVO()
	{
		vo = new PolicyVO();
		vo.setPolicyId(this.policyId);
		vo.setPolicyTitle(this.policyTitle);
		vo.setPolicyAuthor(this.policyAuthor);
		vo.setPolicyTime(this.policyTime);
		vo.setPolicyContent(this.policyContent);
 
 
		return vo;
	}
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
