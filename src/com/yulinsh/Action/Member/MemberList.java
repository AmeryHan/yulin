package com.yulinsh.Action.Member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.LaoxService;
import com.yulinsh.service.MemberService;

/**
 * ª·‘±ÀÊ± œ‘ æ
 * @author Administrator
 *
 */
public class MemberList extends Action {
	MemberService service;


	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		 
		List arr = new ArrayList();
		arr = service.getListMember();
		request.setAttribute("arr", arr);

		String strid=request.getParameter("mbid").toString();
		System.err.println(" select "+strid);
		if(strid.equals("1"))
		{
			return mapping.findForward("list2");
		}else 
		{
			return mapping.findForward("list");
		}
	 
		
		
	}
	
	public MemberService getService() {
		return service;
	}

	public void setService(MemberService service) {
		this.service = service;
	}

}
