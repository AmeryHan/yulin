package com.yulinsh.Action.Member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.MemberService;

/**\
 * 管理系统登录
 * @author Administrator
 *
 */
public class main extends Action {
	MemberService service;


	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" 登录 ");
//		List arr = new ArrayList();
//		arr = service.getListMember();
//		request.setAttribute("arr", arr);/

	 
		String strname=request.getParameter("username");
		String strpwsd=request.getParameter("userpwsd");
		if("admin".equals(strname)|| "admin".equals(strpwsd))
		{
			return mapping.findForward("denglu");
		}else 
		{
			return mapping.findForward("denglu2");
		}
		
		
	}
	
	public MemberService getService() {
		return service;
	}

	public void setService(MemberService service) {
		this.service = service;
	}

}
