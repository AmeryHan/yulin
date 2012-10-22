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
import com.yulinsh.service.NewsService;

/**
 * 查询一天数据
 * @author Administrator
 *
 */
public class MemberOne extends Action {
	MemberService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		List arr = new ArrayList();
		String id=request.getParameter("id");
		System.err.println(" select "+id);
		arr = service.getListMemberOne(id);
		request.setAttribute("arr", arr);

		return mapping.findForward("list");
	}

	public MemberService getService() {
		return service;
	}

	public void setService(MemberService service) {
		this.service = service;
	}

}
